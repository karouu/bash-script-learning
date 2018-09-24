#!/usr/bin/env bash

# sequence generating strategy 1
echo "brace sequence"

for i in {1..5}
do
	echo "i is equal to $i"
done

echo ''


# sequence generating strategy 2
echo "Explicit list:"

for bash_script in  bash_exci1.sh bash_exci2.sh bash_exci3.sh
do
	echo "bash script name is $bash_script"
done 
echo ''


# sequence generating strategy 3
echo "Array"

agendas=(sre neverLostAgain MITchallenge)
for agenda in ${agendas[*]}
do 
	echo "keep minding your unfinished agenda: $agenda"
done
echo ''


# sequence generating strategy 4
echo "command substitution"

for script in $(ls)
do
	echo "you have finished bash scripts: $script, well done!"
done

