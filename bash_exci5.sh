#!/usr/bin/env bash

# Write a Bash script that takes two arguments. 
# If both arguments are numbers, print their sum, 
# otherwise just print both arguments. */

if [[ $# -lt 2 ]]
then
  echo "this program needs 2 arguments."
else
  if [[ $1 =~ [1-9] ]] && [[ $2 =~ [1-9] ]]
  then
    echo "$1 + $2 equals: "
    sum=$(expr $1 + $2)
    echo "$sum"
  else
    echo "$1 $2 are wrong argument. I need two number."
  fi
fi
