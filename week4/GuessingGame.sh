#!/bin/bash
 
 #This function prints a given error
 printError()
 {
     echo -e "\033[31mERROR:\033[0m $1"
 }
 
#This function will get a value between the 2nd and 3rd arguments
 getNumber()
 {
     read -p "$1: "
     while (( $REPLY < $2 || $REPLY> $3 )); do
         printError "Input must be between $2 and $3"
         read -p "$1: "
     done
 }

#This while loop while run the function until the correct answer is received
while :
getNumber "Please type a number between 1 and 100" 1 100; do

if [ "$REPLY" -gt 42 ]; then
    echo "Too High!"
elif [ "$REPLY" -lt 42 ]; then
    echo "Too Low!"
else [ "$REPLY" -eq 42 ]
    echo "Right!"
    break
    
fi
done