#!/bin/bash
set -e
set -o pipefail
echo " Start"
cat missingfile | grep "Error"
echo "End"

