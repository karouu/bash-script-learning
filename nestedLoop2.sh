#!/usr/bin/env bash

count=1
while [[ $count -lt 6 ]]
do
	for num in {1..6}
	do 
		if [[ $num -ge 1 ]] && [[ $num -lt 3 ]]
		then
			echo ''
		elif [[ $num -eq 3 ]]
		then
			echo "num is equal to 3"
		elif [[ $num -gt 3 ]] && [[ $num -le 6 ]]
		then
			echo "$num"
		else
			echo "num is not between 1 and 6"
		fi
	done
	echo ''
	let count=$count+1
done
