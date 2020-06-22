#!/bin/bash

read -sp "Enter your password: " PASSWORD #stores password in a variable
echo
PASSHASH=$(echo "$PASSWORD" | sha256sum) #calculate the hash of the password entered
FILEHASH=$(cat /home/student/scripts/portfolio/week2/secret.txt) #reads the contents of the secret.txt file and sets that as the variable
if [ "$PASSHASH" == "$FILEHASH" ] #compares the hash of the input to the hash in the file
then echo $'\033[32m' "Access Granted" $'\033[37m'
exit 0
else echo $'\033[31m' "Access Denied" $'\033[37m'
exit 1
fi
