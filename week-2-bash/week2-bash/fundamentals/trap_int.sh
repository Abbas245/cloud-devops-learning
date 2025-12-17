#!/bin/bash

trap "echo; echo 'Script interrupted by user (Ctrl+C). Cleaning up...'; exit 1" SIGINT

echo "Starting long task. Press Ctrl+C to interrupt."
count=1

while [[ $count -le 10 ]]; do
  echo "Step $count..."
  sleep 2
  ((count++))
done

echo "Task completed without interruption."
