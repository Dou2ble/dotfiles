#!/usr/bin/env python3
import os

workspaces_raw = os.popen("swaymsg -t get_workspaces -p").read()
result = ""

for line in workspaces_raw.splitlines():
    if not line.startswith("Workspace"):
        continue
    workspace = line.split("Workspace ")[-1].split(" (")[0]
    is_focused = False
    if "(focused)" in line:
        is_focused = True

    if is_focused:
        result += f"[{workspace}]"
    else:
        result += f" {workspace} "

print(result)