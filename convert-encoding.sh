#!/bin/bash

# Convert file encoding in a directory tree
# Usage: convert-encoding --from code1 --to code2 directory

for i in $(ls *.*) 
do 
	a=$(file -b --mime-encoding $i) 
	if [  "$a" = "iso-8859-1" ]
	then 
		echo $i:$a converted to utf8
		cat $i | iconv -f gbk -t utf8 -o $i.utf8
	else
		echo $i, nothing
	fi; 
done

