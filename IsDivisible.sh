#! /usr/bin/bash

isDivisible() {
	
	local num
	read -p "Please enter a number: " num
	if [ $((${num} % 2)) -eq 0 -o $((${num} % 3)) -eq 0 -o $((${num} % 5)) -eq 0 ]; then
		echo "${num} is divisible by 2, 3, or 5"
	else
		echo "${num} is not divisible by 2, 3, or 5"
	fi
}

isDivisible