import sys

sys.argv = [
    "fw-pack.py",
    "firmware.bin",
    "CUSTOM",
    "UVK5_MOD.bin"
]

exec(open("fw-pack.py", encoding="utf-8").read())
