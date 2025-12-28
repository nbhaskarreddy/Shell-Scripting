#!/bin/bash
#check USERID
USERID=$(id -u)
#Variable color 
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

#Folder creation for Log script
LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1)
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"


if [ ! -d "$LOG_FILE" ]; then
	echo "Directory not available: $LOG_FILE"
	echo "No need of further processing and process end"
	exit 1
fi

FILE_DELETE=$((find $LOG_FILE -type f -iname "*.log"  -mtime +14)) 
#find "$SOURCE_DIR" -type f -name "*.log" -mtime +14 -print0 |
while IFS= read -r data
do
	echo "Deleting the file"
	rm -rf "$data"
	
done <<< $FILE_DELETE

#No need of looping to delete files
#find "$SOURCE_DIR" -type f -name "*.log" -mtime +14 -delete
