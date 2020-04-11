#! /bin/bash -x
shopt -s extglob

#Pattern for first and last name
name_Pattern="^[A-Z]{1}[a-z]{3,}$"

#Pattern for email
email_Pattern="^[A-Za-z]{3,}([.|+|_|-]?[A-Za-z0-9]+)?[@][A-Za-z0-9]+[.][A-Za-z]{2,4}([.][A-Za-z]{2,4}+)?$"

#Pattern for mobile number
mobile_Pattern="^[0-9]{1,3}[ ][0-9]{10}$"

#Pattern for passwords
first_Password_Pattern="^[A-za-z]{8,}$"               				       		#Rule 1: minmum 8 chacter
second_Password_Pattern="^(?=.*[A-Z])[A-Za-z]{8,}$"         					#Rule 2: Atleast one uppercase chacter
third_Password_Pattern="^(?=.*[A-Z])(?=.*[0-9])[A-Za-z0-9]{8,}$"				#Rule 3: Atleast one numeric character
four_Password_Pattern="^(?=.*[!@#$%])(?=.*[A-Z])(?=.*[0-9])[A-Za-z0-9!@#$%]{8,}$"		#Rule 4: Exact one special character

final_Password_Pattern="^(?=.*[!@#$%])(?=.*[A-Z])(?=.*[0-9])[A-Za-z0-9!@#$%]{8,}$"		#All Condition statisfy pattern

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
read -p "Enter the first name: " first_Name
toCheck $first_Name $name_Pattern

read -p "Enter the last name: " last_Name
toCheck $last_Name $name_Pattern

read -p "Enter the email address: " email_Address
toCheck $email_Address $email_Pattern

read -p "Enter the mobile number: " mobile_Number
toCheck $mobile_Number $mobile_Pattern

read -p "Enter the password : " password_Number
toCheck $password_Number $final_Password_Pattern
