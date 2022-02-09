#!/bin/bash

today=$(date +"%a")

echo $today
if [[ $today == Sat ]]; then
	echo "Happy Weekend"
elif [[ $today == Sun ]]; then
	echo "Beginning of the week"
elif [[ $today == Mon ]]; then
	echo "Happy Monday"
elif [[ $today == Tue ]]; then
	echo "Happy Tuesday"
elif [[ $today == Wed ]]; then
	echo "Happy Wednesday"
elif [[ $today == Thu ]]; then
	echo "Happy Thursday"
elif [[ $today == Fri ]]; then
	echo "Happy FRIDAAAY"
else
	echo "WRONG DAY"
	exit 1
fi
