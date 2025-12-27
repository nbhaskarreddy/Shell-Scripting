#!/bin/bash

#Basic for loop
for items in i1 i2 i3
do
    echo "item :$items"
done

#Increment operator (value;condition;increment)

for ((i=1; i<5; i++))
do
    echo "Loop: $i"
done