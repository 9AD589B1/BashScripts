#! /usr/bin/bash

txtFileCounter() {
	
	local counter=0
	
	shopt -s nullglob
	
	for f in ./*.txt
	do	
		echo "${f}"
		counter=$(( ${counter} + 1 ))
	done
	
	echo "The text file count in the pwd is ${counter}"
	
}

txtFileCounter