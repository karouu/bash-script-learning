#!/usr/bin/env bash

function addseq {
    local sum=0

	for element in $@
	do
		let	sum=$sum+$element
	done
	echo $sum
	echo "the sum of sequence is $sum"
}
