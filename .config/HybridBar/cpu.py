#!/bin/usr/env python3
from psutil import cpu_percent
from time import sleep

cpu_percent()
sleep(0.1)
cpu = cpu_percent()
print(f"{round(cpu)}%")
