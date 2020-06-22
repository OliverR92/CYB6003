#!/bin/bash
#This creates the header for the table
echo "| "$'\033[34m'"Username        "$'\033[37m'" | "$'\033[34m'"User ID"$'\033[37m'" | "$'\033[34m'"GroupID"$'\033[37m'" | "$'\033[34m'"Home                    "$'\033[37m'" | "$'\033[34m'"Shell             "$'\033[37m'"|" 
#This places all the data from etc/passwd into a table and colours it
awk 'BEGIN {
    FS=":";
    print "|__________________|_________|_________|__________________________|___________________|";
}
/bin\/bash/{
    printf("| \033[32m%-16s\033[37m | \033[35m%-7s\033[37m | \033[35m%-7s\033[37m | \033[35m%-24s\033[37m | \033[35m%-17s\033[37m |\n", $1, $3, $4, $6, $7)
}
END {
    print "_____________________________________________________________________________";
}' /etc/passwd
# The /bin\/bash/ in the middle will make the awk script only show users with /bin/bash in their shell name


exit 0