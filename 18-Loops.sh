#!/bin/bash

LOG_DIR="/var/log/shell_script"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOG_FILE="$LOG_DIR/$SCRIPT_NAME.log"

for i in {1..25}
do
    echo $i &>>$LOG_FILE
done