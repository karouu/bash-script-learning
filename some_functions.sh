#!/usr/bin/env bash

echo "function 1: multiply arguments"

function plier {
	local product=1
	for factor in $@
	do
		product=$(expr $product \* $factor)
#		let product=$product \* $factor
	done
	echo "product of $@ is $product"
}

echo "Function 2:print 1 if even,print 0 if not even"

function isiteven {
	 flag=1
	if [[ $# -eq 0 ]]
	then
		echo "input one intiger"
		read num
		flag=$(expr $num % 2)
		if [[ flag -eq 0 ]]
		then
			echo "$num is an even number"
		else
			echo "$num is an odd"
		fi
	elif [[ $# -eq 1 ]]
	then
		flag=$(expr $1 % 2)
		if [[ flag -eq 0 ]]
		then
#			echo "$1 is an even number"
			echo "1"
		else
#			echo "$1 is an odd"
			echo "0"
		fi
	else
		echo "error input"
	fi
}

echo "Function 3, count even number"
function nevens {
	local count=0
	for entry in $@
	do
	#	echo "$flag"
		varr=$(isiteven $entry)
		if [[ $varr -eq 1 ]]
		then
			let count=$count+1
		fi
	done
#	echo "ther are $count even number in [ $@ ]"
    echo "$count"
}


function howodd {
   even_num=$(nevens $@)	
   percent=$(echo "scale=2;($#-$even_num) / $#" | bc -l) 
	echo "$percent"
}


echo "Function 4,generate fibonacci sequence"
function fib {
	arr=(0 1)
	end=$(expr $1 - 2)
	indice=$(eval echo {0..$end})
	for seq in ${indice[*]}
	do
	    next_seq=$(expr ${arr[$seq]} + ${arr[$seq+1]})
		arr+=($next_seq)
	done
	echo "${arr[*]}"
}
