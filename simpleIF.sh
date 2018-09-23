#!/usr/bin/env bash

echo "Start program"

if [[ $1 -gt 1 ]] && [[ $1 -lt 7 ]]
then
  if [[ $1 -eq 4 ]]
  then
  echo "$1 is my favorite number"
  elif  [[ $1 -le 3 ]]
  then
  echo "$1 is between 1 and 7"
  else
  echo
  fi
else
  if [[ $1 =~ "Jeff" ]] || [[ $1 =~ "cd" ]] || [[ $1 =~ "summy" ]]
  then
  echo "$1 is a freelance worker."
  else
  echo "You entered:$1, not what I was looking for."
  fi
fi

echo "End program"
