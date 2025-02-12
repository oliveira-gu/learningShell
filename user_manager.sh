#!/bin/bash

echo "User Management Script"
echo "1. Add User"
echo "2. Delete User"
echo "3. List Users"
read -p "Choose an option: " option

if [ "$option" -eq 1 ]; then
	read -p "Enter username to add: " username
	sudo useradd $username
	echo "User $username added."
elif [ "$option" -eq 2 ]; then
	read -p "Enter username to delete: " username
	sudo userdel $username
	echo "User $username deleted."
elif [ "$option" -eq 3 ]; then
	cut -d: -f1 /etc/passwd
else
	echo "Invalid option!"
fi
