#!/bin/bash

#Ask the user to enter 3 arguments
echo Please enter 3 arguments only 
echo "=========================="
#Check if only 3 arguments are entered

if [ $# -ge 3 ]; then
	echo "You must not enter more than 3 arguments"
	exit 1
fi

OPTION=$1
WORD=$2
FILE=$3

read -p "Enter your option choose between (-i,-c,-d) " OPTION
read -p "ENTER the word " WORD
read -p "ENTER the file " FILE

#check if the file is found or not
if [ -f $FILE ]; then
	echo Ok file: $File is existing
else
	if [ -d $FILE ]; then
		echo $FILE is a directory
		exit 2
	else
		echo File: $FILE does not exist
		exit 3
	fi
fi

#Case statement to choose between (i , c and d)
case $OPTION in		
	"-i")
		if !(grep $WORD $FILE); then
			echo word not exist
		fi
		;;
	"-c") 
		if [ $(grep -o $WORD $FILE | wc -w) -eq 0 ]; then
			echo "WORD NOT EXIST"
		fi
		;;
	"-d")
		cat $FILE | sed -e 's/\<$WORD\>//g'	
		;;
	*)
		echo TRY AGAIN
		;;
esac
