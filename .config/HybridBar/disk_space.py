#!/usr/bin/env python3
import os

df = os.popen("df -H").read()

for line in df.splitlines():
    if not line.endswith("/"):
        continue

    result = line.split(" /")[0].split(" ")[-1]

print(result)