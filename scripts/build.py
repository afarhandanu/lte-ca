#!/usr/bin/env python3
"""Build only for the supplied, hash-pinned framework. Never edit the input."""
import hashlib
import json
import re
import struct
import subprocess
import zipfile
import zlib
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
EXPECTED = '53bdac74c153bc87760e5cc7fc03f8f89934b18cfba52a6e89e0213ea756af62'
TARGET = Path('android/telephony/NetworkRegistrationInfo.smali')
METHOD = re.compile(r'^\.method public setAccessNetworkTechnology\(I\)V\n.*?^\.end method', re.M | re.S)
PATCH = '''.method public setAccessNetworkTechnology(I)V
    .registers 5

    const-string/jumbo v0, "persist.sys.radio.force_lte_ca"
    const/4 v1, 0x0
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z
    move-result v0
    const/4 v1, 0x1
    const/16 v2, 0xd
    if-eqz v0, :normal
    if-ne p1, v2, :normal
    iput-boolean v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mIsUsingCarrierAggregation:Z

    :normal
    const/16 v0, 0x13
    if-ne p1, v0, :store
    iput-boolean v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mIsUsingCarrierAggregation:Z
    move p1, v2

    :store
    iput p1, p0, Landroid/telephony/NetworkRegistrationInfo;->mAccessNetworkTechnology:I
    return-void
.end method'''

def sha(data):
    return hashlib.sha256(data).hexdigest()

def run(main, *args):
    subprocess.run(['java', '-Xmx4g', '-cp', str(ROOT / 'tools/*'), main, *map(str, args)], check=True)

def disassemble(source, destination):
    run('org.jf.baksmali.Main', 'disassemble', '--api', '30', source, '-o', destination)

def main():
    original = (ROOT / 'input/framework.jar').read_bytes()
    if sha(original) != EXPECTED:
        raise SystemExit('STOP: framework.jar differs from the inspected input. Do not bypass this check.')
    build = ROOT / 'build'
    build.mkdir(exist_ok=False)
    dist = ROOT / 'dist'
    dist.mkdir(exist_ok=True)
    dex_path = build / 'classes4.dex'
    with zipfile.ZipFile(ROOT / 'input/framework.jar') as source:
        if source.testzip() is not None:
            raise RuntimeError('Input ZIP integrity failure')
        dex_path.write_bytes(source.read('classes4.dex'))
    before = build / 'before'
    disassemble(dex_path, before)
    target = before / TARGET
    text = target.read_text()
    matches = list(METHOD.finditer(text))
    if len(matches) != 1:
        raise RuntimeError('Expected exactly one target method')
    old_method = matches[0].group()
    (dist / 'original-method.smali.txt').write_text(old_method + '\n')
    patched = METHOD.sub(lambda _: PATCH, text)
    target.write_text(patched)
    new_dex = build / 'patched.dex'
    run('org.jf.smali.Main', 'assemble', '--api', '30', before, '-o', new_dex)
    data = new_dex.read_bytes()
    if data[:8] != b'dex\n039\0':
        raise RuntimeError('Unexpected DEX version')
    if data[12:32] != hashlib.sha1(data[32:]).digest():
        raise RuntimeError('DEX SHA1 failure')
    if struct.unpack_from('<I', data, 8)[0] != zlib.adler32(data[12:]) & 0xffffffff:
        raise RuntimeError('DEX Adler32 failure')
    after = build / 'after'
    disassemble(new_dex, after)
    # Compare canonical disassembly from the rebuilt DEX, allowing only our method.
    before_files = {p.relative_to(before) for p in before.rglob('*.smali')}
    after_files = {p.relative_to(after) for p in after.rglob('*.smali')}
    if before_files != after_files:
        raise RuntimeError('Class set changed')
    for rel in before_files:
        a = (before / rel).read_text()
        b = (after / rel).read_text()
        if rel == TARGET:
            if METHOD.sub('<PATCH>', a) != METHOD.sub('<PATCH>', b):
                raise RuntimeError('Other target-class content changed')
            if 'persist.sys.radio.force_lte_ca' not in METHOD.search(b).group():
                raise RuntimeError('Patch missing after rebuild')
        elif a != b:
            raise RuntimeError(f'Unexpected round-trip change: {rel}')
    patched_jar = build / 'framework.jar'
    with zipfile.ZipFile(ROOT / 'input/framework.jar') as source, zipfile.ZipFile(patched_jar, 'w') as dest:
        for info in source.infolist():
            dest.writestr(info, data if info.filename == 'classes4.dex' else source.read(info.filename))
    with zipfile.ZipFile(ROOT / 'input/framework.jar') as source, zipfile.ZipFile(patched_jar) as dest:
        if dest.testzip() is not None or source.namelist() != dest.namelist():
            raise RuntimeError('JAR integrity failure')
        for name in source.namelist():
            if name != 'classes4.dex' and source.read(name) != dest.read(name):
                raise RuntimeError(f'Unexpected JAR change: {name}')
    payload_hash = sha(patched_jar.read_bytes())
    installer = f'''#!/system/bin/sh
[ "$BOOTMODE" = true ] || abort "Install from the Magisk app only."
[ -n "$MAGISK_VER_CODE" ] || abort "Magisk is required."
SOURCE_HASH={EXPECTED}
PAYLOAD_HASH={payload_hash}
set -- $(sha256sum /system/framework/framework.jar)
[ "$1" = "$SOURCE_HASH" ] || abort "Framework mismatch. Remove older framework modules and reboot; use only the original ROM build."
set -- $(sha256sum "$MODPATH/system/framework/framework.jar")
[ "$1" = "$PAYLOAD_HASH" ] || abort "Module payload checksum mismatch."
ui_print "For this exact framework only. Remove BEFORE a ROM update."
ui_print "Forces CA reporting; does not enable modem CA."
set_perm_recursive "$MODPATH" 0 0 0755 0644
'''
    # A non-persistent override avoids leaving a new stored property after removal.
    # Original persist property remains under the user's control if it already exists.
    module = {
        'module.prop': 'id=force_lte_ca_exact\nname=Force LTE CA Reporting (Exact Framework)\nversion=1.0\nversionCode=1\nauthor=Local custom build\ndescription=Experimental CA reporting patch for the supplied framework only. Remove before ROM updates. No modem CA activation.\n',
        'customize.sh': installer,
        'system.prop': 'persist.sys.radio.force_lte_ca=true\n',
        'README.md': (ROOT / 'README.md').read_text(),
    }
    for name, value in module.items():
        if name.endswith('.sh'):
            subprocess.run(['sh', '-n'], input=value, text=True, check=True)
    output = dist / 'Force-LTE-CA-exact-framework.zip'
    with zipfile.ZipFile(output, 'w', zipfile.ZIP_DEFLATED) as z:
        for name, value in module.items():
            z.writestr(name, value)
        z.write(patched_jar, 'system/framework/framework.jar')
    report = {'input_sha256': EXPECTED, 'patched_jar_sha256': payload_hash,
              'module_sha256': sha(output.read_bytes()), 'changed_entry': 'classes4.dex',
              'roundtrip_classes_verified': len(before_files), 'device_boot_tested': False}
    (dist / 'build-report.json').write_text(json.dumps(report, indent=2) + '\n')
    if sha((ROOT / 'input/framework.jar').read_bytes()) != EXPECTED:
        raise RuntimeError('Input changed')
    print(json.dumps(report, indent=2))

if __name__ == '__main__':
    main()
