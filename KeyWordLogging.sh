#! /usr/bin/bash

rm -r KeyWordSearchResults

mkdir KeyWordSearchResults

echo -e "\nThis script will search for a key word in your text files."

echo -e "All files containing they keyword will be copied into a 'KeyWordSearchResults' directory,\nwith the line number containing the keyword appended\n"

read -p "What keyword would you like to search for? " kywrd

counter=0

for i in $(find . -type d) ;
do

	if [ "$i" != "./KeyWordSearchResults" ]; then


		for f in $i/*.txt ;
		do
			
			if [ -f "$f" ]; then

				check=$(grep -i "${kywrd}" "$f")
				linenum=$(grep -ni "${kywrd}" "$f" | cut -d : -f 1)
				
				if [ ! -z "$check" ]; then
					name_f=$(basename "$f")
					cp "$f" KeyWordSearchResults/"$name_f"
					echo -e "\n${linenum}" >> KeyWordSearchResults/"$name_f"
					counter=$(( ${counter} + 1 ))
				fi
			fi
			
		done

	fi

done

echo -e "\n${counter} file(s) containing '${kywrd}' were found, and copied into directory 'KeyWordSearchResults'"