#!/bin/bash


s=""
p=""
f1=1
f2=1
for((i=1;i<=$1;i++))
do
	s=fib$i
	p=$p$s
	echo $p
	mkdir -p $p

	cd $p

	string=""
	for((j=1;j<$f1;j++))
	do
		string=0$string
	done
	echo $string >f$i.txt
	
	temp=$f1;
	f1=$f2;
	f2=$f1+$temp;



	for((j=0;j<i;j++))
	do
		cd ..
	done
	p=$p"/"


done
