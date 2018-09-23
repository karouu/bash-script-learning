#!/usr/bin/env bash

week=(Monday Tuesday Wednesday Thursday Friday Saturday Sunday)
if [[ $1 =~ [1-9] ]]
then
  if [[ $1 -ge 0 ]] && [[ $1 -le 6 ]]
  then
    echo ${week[$1]}
  else
    echo "number overflow"
  fi
else
  echo "one number argument needed"
fi

echo "------segment line--------"
array1=(permutation combination partition binomial mulnomial)
array2=(descrete continuious pmf pdf exponential)
echo "length of array1: ${#array1[*]}"
echo "length of array2: ${#array2[*]}"
num=$(expr ${#array1[*]} + ${#array2[*]})
echo "the sum of length of array1 and array2 is $num"
