#!/usr/bin/env bash

for date in sep20 sep21 sep22
do
	echo "In date $date,you must finish:"
	for agenda in {8..100}
	do
		if [[ $agenda -gt 10 ]]
		then
			break
		else
			echo "Lecture$agenda probability"
		fi
	done
	echo ''
done


