#!/bin/bash
for svc in nginx mysql redis; do
 systemct1 restart "$svc"
done
