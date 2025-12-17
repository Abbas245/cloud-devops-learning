#!/bin/bash

services="nginx mysql redis docker"

for svc in $services; do
  echo "Restarting service: $svc"
  sleep 1
done
