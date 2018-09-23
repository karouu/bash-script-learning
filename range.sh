#!/usr/bin/env bash

function range {
	if [[ $1 -ge 0 ]]
	then
		eval echo {0..$1}
	else
		eval echo {$1..0}
	fi
}

function extremes {
	max=$1
	min=$1

	for i in $@
	do
		if [[ $i -gt $max ]]
		then
			max=$i
		fi
		if [[ $i -lt $min ]]
		then 
			min=$i
		fi
	done
	echo $max $min
	
}
