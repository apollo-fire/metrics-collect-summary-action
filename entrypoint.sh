#!/bin/sh

metrics_path="/github/workspace/$1"

python /collect_metrics.py "$metrics_path" "$2"
