#!/bin/sh

# 1 - name of metrics directory
# 2 - name of collection to save to
# 3 - name of the current branch

git config --global --add safe.directory "/github/workspace"

# Where to save metrics file to
metrics_path="/github/workspace/$1"
python3 /collect_metrics.py "$metrics_path" "$2" "/github/workspace" "$3"
