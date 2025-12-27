#!/bin/bash

#For loops using Arguments
#$@ we need to pass arguments at the time of executing scripts,
#it will pick at the time of looping

for arg in $@
do
    echo "Arguments passed is: $arg"
done