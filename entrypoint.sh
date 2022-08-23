#!/bin/sh

metrics_path="/github/workspace/$1"

echo "cwd contents"
ls -lha .

echo "root contents"
ls -lha /

python3 /collect_metrics.py "$metrics_path" "$2"
