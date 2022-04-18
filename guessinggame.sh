#!/bin/bash
# File: guessinggame.sh

function check 
{
	local files=$(ls -la|egrep "^\-[^d]"|wc -l)
	
	local files=$(ls -1A|wc -l)
	
	if [ $1 -gt $files ] 
		then echo "1"
	elif [ $1 -lt $files ] 
		then echo "-1"
	else 
		echo "0"
	fi
}

function start 
{
	echo "How many files are in this directory?"
	local flag=2

	while [ $flag -ne 0 ] 
	do
		read guess
		if [[ $guess =~ [^0-9] ]] || [ "$guess" = "" ] 
		then
			echo "Please enter a whole number in numerical form"
			let flag=2
		else 
			let flag=$(check $guess) 
		fi

		if [ $flag -eq 1 ] 
			then echo "Your guess is too high. Please try again."
		elif [ $flag -eq -1 ]
			then echo "Your guess is too low. Please try again."
		fi
	done

	if [ $flag -eq 0 ] 
		then echo "Congratulations! Your guess is correct!"
	fi
}

start 
