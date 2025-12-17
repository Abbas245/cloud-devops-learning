#!/bin/bash
path=$1
if [[ -z "$path" ]]; then
echo "Please enter the file orfolder name"
exit 1
fi

if [[ -d "$path" ]]; then
echo "'$path' a directory(folder)"
elif [[ -f "$path" ]]; then
echo "'$path' its a file"
else
echo "'$path' does not exist "
exit 1
fi

# Extra details
[[ -e "$path" ]] && echo "Exists."
[[ -s "$path" ]] && echo "Not empty."
[[ -r "$path" ]] && echo "Readable."
[[ -w "$path" ]] && echo "Writable."
[[ -x "$path" ]] && echo "Executable."

