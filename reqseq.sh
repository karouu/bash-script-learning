#!/usr/bin/env bash
# File: repseq.sh

sequence=$(eval echo {$1..$2})
#echo ${sequence[*]}
echo $sequence

for i in $sequence
do
  compute=$(echo "$i % $3" | bc)
  result="$result $compute"
  echo $i $result
done

echo $result
