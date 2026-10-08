#!/usr/bin/env python3
"""Use the builder's pinned checksum as the single source of truth."""
import gzip
import hashlib
import importlib.util
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
spec = importlib.util.spec_from_file_location("builder", ROOT / "scripts/build.py")
builder = importlib.util.module_from_spec(spec)
spec.loader.exec_module(builder)
source = ROOT / "input/framework.jar.gz"
if not source.is_file():
    raise SystemExit("Missing input/framework.jar.gz. Upload it from the Framework-2 project.")
data = gzip.decompress(source.read_bytes())
actual = hashlib.sha256(data).hexdigest()
print("Expected SHA256:", builder.EXPECTED)
print("Actual SHA256:  ", actual)
if actual != builder.EXPECTED:
    raise SystemExit("Framework mismatch. Upload input/framework.jar.gz and scripts/build.py from the same project package.")
(ROOT / "input/framework.jar").write_bytes(data)
print("Framework verified; ready to compile.")
