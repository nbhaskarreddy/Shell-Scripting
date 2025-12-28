#!/bin/bash

instance=$(date +%s)
#sh 20-callscript1.sh #No connection between sub script and main script
source ./20-callscript1.sh #it will affect the exisitng code/sub module

echo "PID of the script:$$"
echo "Date at the time of execution is $instance"
