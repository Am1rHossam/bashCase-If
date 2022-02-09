#!/bin/bash

#for provided file print the summary of what permissions user has granted
#example: ./filesys.sh hello.txt
#Read: yes
#Write: No
#Execute: No

#argument check

if [ $# -ne 1 ]; then
	echo "Please enter only one argument"
	exit 1
fi

#variable assignment
FILE=$1


#Check if the file exists [-f $FILE ]
if [ -f $FILE ]; then
	#default variables
	VAR_READ="NO"
	VAR_WRITE="NO"
	VAR_EXEC="NO"


	#check if the file is readable

	if [ -r $FILE ]; then
		VAR_READ="YES"
	fi

	#CHECK if the file is writable

	if [ -w $FILE ]; then
		VAR_WRITE="YES"
	fi

	#CHECK IF THE FILE is EXECUTABLE

	if [ -x $FILE ]; then
		VAR_EXEC="YES"
	fi

	#Write summary to users
	echo ===FILE: $FILE===
	echo "READ: $VAR_READ"
	echo "WRITE: $VAR_WRITE"
	echo "EXECUTE: $VAR_EXEC"
else
	if [ -d $FILE ]; then
		echo $FILE is a directory
	else
		echo File: $FILE does not exist
	fi
fi
