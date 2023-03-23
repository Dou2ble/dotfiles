#!/usr/bin/env python3

import os

acpi = os.popen("acpi -b").read()
batteries = []

for line in acpi.splitlines():
    percentage = int(line.split(", ")[1].split("%")[0])
    batteries.append(percentage)

batteries.sort()
percentage = batteries[-1]

print(f"{percentage}%")


