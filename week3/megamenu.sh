#!/bin/bash

/bin/bash "/home/student/scripts/portfolio/week2/passwordcheck.sh"

EXITVALUE=$?

if [ $EXITVALUE == 0 ]
then
while
    echo 
    echo $'\033[34m' "Select an option: " $'\033[37m'
    echo $'\033[36m' "1. Create a folder
 2. Copy a folder
 3. Set a password
 4. Calculator
 5. Create week folders
 6. Check filenames
 7. Download files" $'\033[37m'
    echo $'\033[31m' "8. Exit" $'\033[37m'
    read -p "Selection: " SELECTION; do
case $SELECTION in
1)
/bin/bash "/home/student/scripts/portfolio/week2/foldermaker.sh"
;;

2)
/bin/bash "/home/student/scripts/portfolio/week2/foldercopier.sh"
;;

3)
/bin/bash "/home/student/scripts/portfolio/week2/setPassword.sh"
;;

4)
/bin/bash "/home/student/scripts/portfolio/week3/calculator.sh"
;;

5)
/bin/bash "/home/student/scripts/portfolio/week3/megafoldermaker.sh"
;;

6)
/bin/bash "/home/student/scripts/portfolio/week3/filenames.sh"
;;

7)
/bin/bash "/home/student/scripts/portfolio/week3/internetdownloader.sh"
;;

8)
exit 0
;;

*)
echo "Unknown Input"
;;

esac
done
fi 
