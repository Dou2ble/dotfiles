#!/usr/bin/env python3

import os

if "Charging" in os.popen("acpi -b").read():
    print("󰢜")
else:
    print("󰁺")