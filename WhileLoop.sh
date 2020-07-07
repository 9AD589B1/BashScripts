#! /usr/bin/bash

num=1

while [ ${num} -le 100 ];
do
	echo ${num}
	num=$(( ${num} * 5 ))
done