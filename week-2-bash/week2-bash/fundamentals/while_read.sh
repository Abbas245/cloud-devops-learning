#!/bin/bash
echo " Reading names.txt line by line..."
while IFS= read -r line; do
echo "Line: [ $line ]"
done < names.txt
