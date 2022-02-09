#!/bin/bash

echo ======Welcome======

select fruit in apple banana kiwi quit
do
case $fruit in
	apple)
		select color in red yellow green
		do
		case $color in
			red)
				echo "you have chosen red apple"
				exit 1
				;;
			yellow)
				echo "you have chosen yellow apple"
				exit 1
				;;
			green)
				echo "you have chosen green apple"
				exit 1
				;;
			*)
				echo "WRONG CHOICE"
				exit 1
				;;
			esac
			done
			;;
	banana)
		select color2 in green yellow
		do
		case $color2 in
			green)
				echo "you have chosen green banana"
				exit 1
				;;
			yellow)
				echo "you have chosen yellow banana"
				exit 1
				;;
			*)
				echo "WRONG CHOICE"
				exit 1
				;;
		esac
		done
		;;
	kiwi)
		echo "you have selected kiwi"
		exit 1
		;;
	EXIT)
		exit 1
		;;
	*)
		echo "WRONG CHOICE"
		exit 1
		;;
	esac
	done
	;;
