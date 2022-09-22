#!/bin/sh

if [ -z $1 ] || [ -z $2 ]
then
	echo "Invalid input"
	exit
fi

if [ $1 \< 1 ] || [ $2 \< 1 ]
then
	echo "input should be greater than 0"
	exit
fi

leftSide=$(seq 1 $1)
rightSide=$(seq 1 $2)
for i in $leftSide 
	do
	for j in $rightSide
	do
		iMulJ=$(expr $i \* $j)
		echo -n "$i*$j=$iMulJ "
	done
	echo " "
done
