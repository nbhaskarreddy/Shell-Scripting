#!/bin/bash

#Read files using for Loop

#cons of the For loop it will print till the space and print data in next file after space
#No line by line reading is done

for files in $(cat 18-file.txt)
do
    echo "Names of Person in file:$files"
done
