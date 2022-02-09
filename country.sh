#!/bin/bash

select country in AUSTRIA USA EGYPT CHINA RUSSIA
do
case $country in
AUSTRIA)
	echo "AUSTRIANS TALK DUTCH"
	exit 1
	;;
USA)
	echo "USAIANS TALK ENGLISH"
	exit 1
	;;
EGYPT)
	echo "EGYPTIANS TALK ARABIC"
	exit 1
	;;
CHINA)
	echo "CHINASIANS TALK CHINESE"
	exit 1
	;;
RUSSIA)
	echo "RUSSIANS TALK RUSSIAN"
	exit 1
	;;
*)
	echo "WRONG CHOICE"
	exit 2
	;;
esac 
done
