#!/bin/bash


if [ $# -ne 1 ]; then
	echo "Usage: "$0" filename"
	exit -1
else

	if [ ! -e "$1"  ]; then
		echo $1" does not exist."
		exit -2
	else
		if [ -d "$1" ]; then
			echo $1 " is not  a regular file"
			exit -3
		
		else

			if [ ! -r "$1" ]; then
				echo $1" does not exist."
				exit -4
			else
				
				chmod u+x $1
	
			fi
		fi
	fi



fi
