#1/bin/bash

if [  -z "$1" ] ; then
	# no folder arg found
	exit -1
else

if [ ! -d "$1" ]; then
	#is not directory
	exit -2
else

	if [ ! -r "$1" ]; then
		#directory is not readable	
		exit -3
	
	fi


	cd $1

	if [ -z "$2" ]; then	
	
		echo "all extensions:"
		n=$(ls -l | grep -c '')
		(( n=$n-1 ))
		echo $n

	else

	
		echo "extension <<"$2">> :"
		pattern="."$2
		echo $pattern
		n=$(ls -l | grep -c $pattern )
		echo $n

	fi
fi
fi
