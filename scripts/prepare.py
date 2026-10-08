#!/usr/bin/env python3
"""Extract the uploaded framework and calculate its checksum automatically."""
import gzip
import hashlib
import io
import zipfile
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
source = ROOT / "input/framework.jar.gz"
if not source.is_file():
    raise SystemExit("Missing input/framework.jar.gz. Upload the compressed framework first.")
data = gzip.decompress(source.read_bytes())
with zipfile.ZipFile(io.BytesIO(data)) as jar:
    if jar.testzip() is not None:
        raise SystemExit("Framework JAR integrity check failed.")
    if "classes4.dex" not in jar.namelist():
        raise SystemExit("This patch requires classes4.dex. This framework needs separate inspection.")
actual = hashlib.sha256(data).hexdigest()
(ROOT / "input/framework.jar").write_bytes(data)
(ROOT / "input/framework.jar.sha256").write_text(actual + "  framework.jar\n")
print("Calculated source SHA256:", actual)
print("Archive integrity verified; ready to compile.")
