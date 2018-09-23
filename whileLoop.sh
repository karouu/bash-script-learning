#!/usr/bin/env bash

count=3
while [[ $count -gt 0 ]]
do
	echo "now count value is equal to $count"
	let count=$count-1
done
