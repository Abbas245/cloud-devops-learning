#!/bin/bash

temp_file="/tmp/mytempfile.txt"

echo "Creating temp file: $temp_file"
echo "Some temporary data" > "$temp_file"

trap "echo 'Cleaning up...'; rm -f '$temp_file'" EXIT

echo "Doing some work..."
sleep 5
echo "Work done. Exiting now."
