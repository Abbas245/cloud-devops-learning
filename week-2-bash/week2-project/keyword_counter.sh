#!/bin/bash
file=$1
if [[ ! -f "$file" ]]; then
echo " Error: The file does not exist"
exit 1
fi
if [[ ! -r "$file" ]]; then 
echo " Error : The files is not readable"
exit 1
fi
if [[ ! -s "$file" ]]; then
echo "Error: The file is empty"
exit 1
fi
if ! command -v grep > dev/null; then
echo "Error: The  'grep' is not installed"
exit 1
fi
echo "All Has passed..."
grep -n "a" "$file"
echo "Done"
