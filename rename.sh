#!/bin/bash

# Rename files

for i in $(ls *.*)
do
	if [ -e $i.utf8 ]
	then
		echo rename $i.utf8
		mv $i.utf8 $i
	fi
done
