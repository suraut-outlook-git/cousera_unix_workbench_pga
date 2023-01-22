#!/usr/bin/env bash
filenum=$(ls | wc -l)

function guess_filenum {
	read guess
	if [[ $guess -eq $filenum ]]
	then
		echo "Congratulations!!! You guessed it Right!"
		echo "Fantastic!"
		echo "  File(s) in the directory: ..."
		for f in $(ls)
		do
			echo "  - $f and "
		done
		echo "    ... and that is it."
	else
		if [[ $guess -gt $filenum ]]
		then
			echo "There is less... try again and press Enter :"
			guess_filenum
		else
			echo "There is more... try again and press Enter :"
			guess_filenum
		fi
	fi
}
echo "Welcome to the Guessing Game!"
echo "Guess how many files are in the current directory and press Enter :"
guess_filenum
