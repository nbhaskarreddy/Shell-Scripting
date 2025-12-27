#!/bin/bash

#Arrays access using For loop
names=("Bhaskar" "Sindhu" "Reddy")

for names in "${names[@]}" #Highlight with double quotes helps to read complete array else
#only first value of the array will be read
do
    echo "Names in array print in linear:$names"
done