#!/bin/bash


echo $'\033[31m' "All sed statements: " $'\033[37m'
grep -r '^sed'
echo $'\033[31m' "All lines starting with an m: " $'\033[37m'
grep -r '^m'
echo $'\033[31m' "All lines with a triple digit number: " $'\033[37m'
grep -rP '(?<!\d)\d{4}(?!\d)'
echo $'\033[31m' "All echo statements with atleast three words: " $'\033[37m'
grep -rP 'echo "\w{1,99}\s\w{1,99}\s\w{1,99}'
echo $'\033[31m' "All lines that would make a good password: " $'\033[37m'
#This will display all lines with atleast 1 uppercase, 1 lowercase, 1 digit and 1 special symbol.
grep -rP "^[A-Z].*[a-z].*[0-9].*[]:/?#@\!\$&'()*+,;=%[].*$"

