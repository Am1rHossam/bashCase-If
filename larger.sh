#!/bin/bash

#if [ $# -ne 2 ]; then
#	echo "You have to enter 2 arguments"
#	exit 2
#fi
#number1=$1
#number2=$2
read -p "ENTER the first number: " number1
read -p "ENTER the second number: " number2

if [ $number1 -gt $number2 ]; then
	echo "Number1 ($number1) is the larger"
	exit 1
elif [ $number2 -gt $number1 ]; then
	echo "Number2 ($number2) is the larger"
	exit 1
else
	echo "the two numbers are equal"
	exit 1
fi

