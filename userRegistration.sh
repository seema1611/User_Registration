#! /bin/bash -x
shopt -s extglob

#Pattern for first and last name
name_Pattern="^[A-Z]{1}[a-z]{3,}$"

#Pattern for email
email_Pattern="^[A-Za-z]{3,}([.|+|_|-]?[A-Za-z0-9]+)?[@][A-Za-z0-9]+[.][A-Za-z]{2,4}([.][A-Za-z]{2,4}+)?$"

#Function to check name email and password
function toCheck() {

	pattern=$2
	if [[ $1 =~ $pattern ]]
	then
		echo "Valid Format"
	else
		echo "Invalid Format"
	fi
}

#Enter name for first name
read -p "Enter the first name: " first_Name
toCheck $first_Name $name_Pattern

#Enter name for last name
read -p "Enter the last name: " last_Name
toCheck $last_Name $name_Pattern

#Enter name for email address
read -p "Enter the email address: " email_Address
toCheck $email_Address $email_Pattern
