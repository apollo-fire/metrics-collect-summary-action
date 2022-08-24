#!/bin/sh

# 1 - name of metrics directory
# 2 - name of collection to save to
# 3 - path of cloned repo, e.g. /github/workspace/

# Where to save metrics file to
metrics_path="/github/workspace/$1"
python3 /collect_metrics.py "$metrics_path" "$2" "$3"
