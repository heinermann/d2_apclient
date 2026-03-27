import difflib
import subprocess
import sys
import time
from pathlib import Path

import hexdump

file = Path(sys.argv[1])

old_mtime = None
old_bytes = []
old_yaml = ""

while True:
  time.sleep(0.1)
  mtime = file.stat().st_mtime

  if mtime == old_mtime: continue
  print("!!!!WRITE DETECTED!!!!")
  old_mtime = mtime

  # Diff binary
  new_bytes = file.read_bytes()
  old_dump = hexdump.hexdump(old_bytes, result="return")
  new_dump = hexdump.hexdump(new_bytes, result="return")
  for line in difflib.unified_diff(old_dump.splitlines(), new_dump.splitlines(), n=0):
    print(line)
  old_bytes = new_bytes
  
  # Diff kaitai struct
  result = subprocess.run(["ksdump.bat", file, "diablo_2_d2s.ksy"], capture_output=True, text=True)
  new_yaml = result.stdout
  if old_yaml != new_yaml:
    print("!!!!CHANGE DETECTED!!!!")
    Path("_old.yaml").write_text(old_yaml)
    Path("_new.yaml").write_text(new_yaml)
    subprocess.run(["dyff.exe", "between", "--omit-header", "--set-exit-code", "-c", "on", "_old.yaml", "_new.yaml"], text=True)
  old_yaml = new_yaml
