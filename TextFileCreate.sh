#! /usr/bin/bash

touch 1.txt
touch 2.txt

ls -l >> 1.txt

read -p "What prefix would you like for file 1.txt? " prefix
mv 1.txt ${prefix}1.txt