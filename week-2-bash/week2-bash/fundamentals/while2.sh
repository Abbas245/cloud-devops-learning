#!/bin/bash

file="output.log"

echo "Waiting for $file to appear..."

while [[ ! -f "$file" ]]; do
  echo "File not found... checking again in 2 seconds."
  sleep 2
done

echo "File found! Proceeding..."
