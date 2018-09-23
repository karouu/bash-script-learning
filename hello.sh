#!/usr/bin/env bash

# this exercise is about bash Function

function hello {
	echo 'hello hi'
	echo 'hello again'
}

hello
hello
hello

function ntmy {
	echo 'first $1'
	echo 'second $2'
	echo 'you all guys:$@'
}
