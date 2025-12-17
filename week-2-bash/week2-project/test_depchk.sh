#!/bin/bash
if command -v grep >/dev/null 2>&1; then
 echo " grep is installed"
else
 echo " grep is not installed" >&2
fi

if command -v abc123 >/dev/null 2>&1; then
echo " abc123 is installed"
else
echo "abc123 is not installed" >&2
fi
