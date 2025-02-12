#!/bin/bash

echo "What's your name?"
read name
echo "Hello, $name! Welcome to shell scripting."
echo "How old are you?"
read age

# Ask the user for input
read -p "Do you want to continue? (y/n): " choice

# Check the user's choice
if [ "$choice" = "y" ]; then
    echo "You chose YES. Proceeding..."
elif [ "$choice" = "n" ]; then
    echo "You chose NO. Exiting..."
else
    echo "Invalid input. Please enter 'y' or 'n'."
fi
