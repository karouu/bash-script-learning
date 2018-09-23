#!/usr/bin/env bash
echo "arguments: $@"
echo "first number is: $1"
echo "Second number is: $2"
sum=$(expr $1 + $2)
echo "$1 + $2 = $sum"
