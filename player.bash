#!/bin/bash

script=$1

if [[ -z "$script" ]]; then
	echo 'oops! need a file to play!'
	exit 2
fi

if [ ! -e "$script" ]; then
	echo 'oops! script file does not exist!'
	exit 2
fi

if [ ! -r "$script" ]; then
	echo "oops! script file can't be read!"
	exit 2
fi

grep -v -p '^\s*#' "$script" | while IFS=: read -a line ; do
	say "${line[0]}"
	sleep "${line[1]}"
done
