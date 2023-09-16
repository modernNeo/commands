#!/bin/python3

import subprocess

_, remote_branches = subprocess.getstatusoutput(
    "git fetch --prune origin; git branch -r"
)

_, local_branches = subprocess.getstatusoutput(
    "git branch -l"
)

remote_branches = [local_branch.strip() for local_branch in remote_branches.split("\n")[1:]]
final_local_branches = []
for local_branch in local_branches.split("\n"):
    if local_branch[0] == "*":
        local_branch = local_branch[1:].strip()
    else:
        local_branch = local_branch.strip()
    final_local_branches.append(f"origin/{local_branch}")
for local_branch in final_local_branches:
    if local_branch not in remote_branches:
        local_branch = local_branch[7:]
        cmd = f"git branch -D {local_branch}"
        print(cmd)
        subprocess.getstatusoutput(cmd)
