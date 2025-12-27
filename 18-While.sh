#!/bin/bash

#IFS --Internal Field Separator
while IFS= read -r files || [ -n "$files" ] 
#Ensures the last line is still processed  || [ -n "$files" ]
do
    echo "Names of Person in file:$files"
done < 18-file.txt