#!/bin/bash
# Dfault Value
region="${1:-us-east-1}"
echo "Region: $region"
# Required VAlue
env="${2:?you must provide a environmant name(dev/stage/prod)}"
echo "Environment: $env"
