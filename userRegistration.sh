#! /bin/bash -x
shopt -s extglob

#Pattern for first name
name_Pattern=^[A-Z]{1}[a-z]{3,}$

#Function to check pattren for first name
function toCheck() {

	pattern=$2
	if [[ $1 =~ $pattern ]]
	then
		echo "Valid Format"
	else
		echo "Invalid Format"
	fi
}
read -p "Enter the first name:" first_Name
toCheck $first_Name $name_Pattern
