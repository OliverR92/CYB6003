#!/bin/bash

#creates the array using the lines in the entered file
for names in $(cat $1)
do
#searches each line, -f looks for files, -d looks for directories
    if [ -f "$names" ]; then
        echo "$names - That file exists."
    elif [ -d "$names" ]; then
        echo "$names - Thats a directory."
    else
        echo "$names - I don't know what that is."
fi
done

exit 0