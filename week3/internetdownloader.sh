#!/bin/bash
#the user will enter URL's until they type exit
#wget will download the file in to the folder they create
#if the user types an invalid URL the wget function will give an error
while read -p "Enter the URL of a file to download or type 'exit' to quit: " URL; do
    if [ "$URL" == "exit" ]; then
        exit 0
    else
        read -p "Enter the file to place the download in: " file
        mkdir "$file"
        cd "$file"
        wget "$URL" 
    fi
done

