#! /usr/bin/bash

renameFile() {

	local filetype=""
	
	while [ "${filetype}" != "t" -a "${filetype}" != "j" ];
	do 
		read -p "Please enter a filetype for renaming. Enter 't' for text, or 'j' for jpg: " filetype
	done
	
	echo -e "\n"
	
	local prefix
	
	read -p "Please enter a prefix to use for file renaming: " prefix
	
	echo -e "\n"
	
	echo -e "Renaming files...\n"
	
	if [ "${filetype}" == "t" ]; then
		for f in *.txt
			do
			mv ${f} ${prefix}${f}
		done
	else
		for f in *.jpg
			do
			mv ${f} ${prefix}${f}
		done
	fi

	echo "Done"
}

renameFile