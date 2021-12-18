#!/bin/bash

#for loop for users home folder

for users in $(ls /home)
do
	for item in $(find /home/$user -iname '*.sh');
	do
		echo -e "Found a script in $user home directory \n$item"
	done
done

