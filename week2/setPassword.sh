#!/bin/bash
read -p "Enter the name of the folder you would like to put your password in: " folderName # This prompts the user to enter the foldername and sets their entry as a variable
cd $folderName #this moves to the desired folder to store the password
read -sp "Enter your new password: " password # Prompts the user to enter their passowrd and doesnt display it as they type
echo
echo $password | sha256sum > $folderName/secret.txt # Enters the hash of the users password in to a text document
exit 0