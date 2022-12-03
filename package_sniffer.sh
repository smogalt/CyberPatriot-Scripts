#!/bin/bash

# Putting the names of all installed packages into a temporary files.
apt list --installed > pkgnames_temp.txt

# Set buffer for command arguement
input_buffer="$1"

# Require a command arguement to make sure that there isn't a bunch of output
if [[ $1 == "" ]]; then
	input_buffer="games"
fi


# While loop to read line by line.
while IFS= read -r line; do

	# Reading lines
	line=${line%%/*}

	# Running apt-cache show for each line
	buffer=`apt-cache show "$line"`

	# Checking if the provided arguement is in the buffer
	if [[ $buffer == *"$input_buffer"* ]]; then
		echo "$line";
	fi
done < pkgnames_temp.txt
rm pkgnames_temp.txt
