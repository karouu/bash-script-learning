#!/usr/bin/env bash
echo "the number of auguments is $#"
num=$(expr $# \* $1)
echo "arguments number times first argument is: $num"
