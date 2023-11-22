#!/bin/bash
point=0
b=1
while [ "$point" -ne 1 ]
do
	echo "Merkulov Ivan student of group 710-1"
		echo "Task9"
		echo "This program outputs the name of the current directory, requests the file name (if one exists) and the user name, outputs the rights of this user to the file in the format: read, write, execute"
		echo "The name of current catalog:"
		pwd

		cond=0
			while [ "$cond" -ne 1 ];
			do

				echo "Please, enter the name of file, which you want to check:"
				read value
				if  test -f "$value"; then
					cond=1
					echo "$value exists."
				else
					echo "$value doesn't exists. Please, try again!"
				fi
			done
		check=0
		username="$USER"
			while [ "$check" -ne 1 ];
			do
				
				echo "Please, enter your username:"
				read name
				id $name
				#if [ "$name" == "$username" ]; then
					#check=1
					#echo "$name is correct."
				#else
					#echo "$name is incorrect. Try again!"
				#fi
				check=1
			done

		echo "Your user's rights to the file:"
		ls -l $value
	echo "Enter '1' to finish the program or press any button to continue working:"
	read a
	
	if [ "$a" == "$b" ]; then
		point=1
	else
		point=0
	fi
done
	
			



