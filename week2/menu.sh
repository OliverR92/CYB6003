#!/bin/bash

/bin/bash "/home/student/scripts/passwordcheck.sh"

EXITVALUE=$?

if [ $EXITVALUE == 0 ]
then
    read -p "Select an option: 
    1. Create a folder
    2. Copy a folder
    3. Set a password
    " SELECTION
case $SELECTION in
1)
/bin/bash "/home/student/scripts/foldermaker.sh"
;;

2)
/bin/bash "/home/student/scripts/foldercopier.sh"
;;

3)
/bin/bash "/home/student/scripts/setPassword.sh"
;;

*)
echo "Unknown Input"
;;

esac
fi 
