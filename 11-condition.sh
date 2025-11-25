#!/bin/bash

#condition for count >10 or <10
Number=$1


if [ "$Number" -lt 10 ]; then
    echo "$Number is Less to 10"
elif [ "$Number" -eq 10 ]; then
    echo "$Number is equal to 10"
else 
    echo "$Number is greater than 10"
fi

echo "Please enter the number"

read  -s Number2
if [ $(($Number2%2)) -eq 0 ]; then
    echo "$Number2 is Even"
else 
    echo "$Number2 is odd"
fi        
