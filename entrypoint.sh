#!/bin/sh

metrics_path="/github/workspace/$1"

python3 /collect_metrics.py "$metrics_path" "$2"
