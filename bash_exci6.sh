#!/usr/bin/env bash

# Write a Bash script that prints "Thaks Morses it's Friday" if today is Friday.

today=$(date +%A)
if [[ today =~ 'Friday' ]]
then 
  echo "Thank summy it's Friday."
else
  if [[ $# -eq 0 ]]
  then
    echo "ooh, today is not Friday."
  elif  [[ $1 =~ 'Friday' ]]
  then
    echo "Today is Friday!"
  else
    echo "Go to work cowardice!!"
  fi
fi
