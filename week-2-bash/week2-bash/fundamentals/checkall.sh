#!/bin/bash

# 1️⃣ Check if argument is provided
if [[ -z "$1" ]]; then
  echo "Error: Please provide a filename."
  exit 1
fi

file="$1"

# 2️⃣ Check if file exists
if [[ ! -f "$file" ]]; then
  echo "Error: File '$file' does not exist."
  exit 1
fi

# 3️⃣ Check if file is not empty
if [[ ! -s "$file" ]]; then
  echo "Error: File '$file' is empty."
  exit 1
fi

# 4️⃣ Check if required command exists
if ! command -v grep >/dev/null; then
  echo "Error: 'grep' is not installed."
  exit 1
fi

echo "All checks passed. Processing file..."
grep -n "a" "$file"
echo "Done."
