#!/bin/bash

read -p "Enter first integer: " INT1 #this asks the user to enter the first number

read -p "Please choose an operation:  
1. Addition
2. Subtraction
3. Division
4. Multiplication
" OPERATION #this asks the user to choose an operation and stores their input

read -p "Enter second integer: " INT2 #asks for second number and stores it

case $OPERATION in #performs the chosen operation using set numbers and shows the output with a specific colour
    1)
    let ADDITION=$INT1+$INT2
    echo $'\033[34m' $ADDITION $'\033[37m'
    ;;

    2)
    let SUBTRACTION=$INT1-$INT2
    echo $'\033[32m' $SUBTRACTION $'\033[37m'
    ;;

    3)
    let DIVISION=$INT1/$INT2
    echo $'\033[31m' $DIVISION $'\033[37m'
    ;;

    4) 
    let MULTIPLY=$INT1\*$INT2
    echo $'\033[35m' $MULTIPLY $'\033[37m'
    ;;

    *)
    echo Invalid operation 
    ;;
esac

exit 0