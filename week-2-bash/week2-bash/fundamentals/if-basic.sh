#!/bin/bash
if [[ -z "$1" ]]; then
echo "Error: name is required"
exit 1
else
echo "Hello $1"
fi
