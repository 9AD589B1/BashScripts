#! /usr/bin/bash

for i in {1..3}
do
	echo "Iteration ${i}"
done

for i in ./*
do
	echo "File name is ${i}"
done