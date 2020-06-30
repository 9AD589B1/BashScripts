#! /usr/bin/bash
echo -e "Let's check if a number is divisible by 3...\n"
sleep 2
read -p "Please enter a number " num
if [ $((${num} % 3)) -eq 0 ]; then
	echo "${num} is divisible by 3"
else
	echo "${num} is not divisible by 3"
fi