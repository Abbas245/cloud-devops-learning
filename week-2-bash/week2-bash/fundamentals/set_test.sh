#!/bin/bash
set -e

echo "Step 1: Creating Directory..."
mkdir testdire

echo "Step 2: Copying missing file..."
cp missingfile.txt testdir/

echo "Step 3:You should not see this ..."
