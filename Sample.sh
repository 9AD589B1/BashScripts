#! /usr/bin/bash
touch /mnt/c/Users/kocha/BashScripts/1.txt
touch /mnt/c/Users/kocha/BashScripts/2.txt
ls -l /mnt/c/Users/kocha/BashScripts >> /mnt/c/Users/kocha/BashScripts/1.txt
read -p "What prefix would you like for file 1.txt? " prefix
mv /mnt/c/Users/kocha/BashScripts/1.txt /mnt/c/Users/kocha/BashScripts/${prefix}1.txt