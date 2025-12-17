#!/bin/bash
num=$1
if [[ -z "$num" ]]; then
echo "Please enter a number"
exit 1
fi

if [[ $num -lt 0 ]]; then
echo "The number is negative"
elif [[ $num -eq 0 ]]; then
echo "The number is zero"
else
echo "The number is positive"
fi 

