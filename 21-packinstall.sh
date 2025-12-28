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
LOG_FILE="LOGS_FOLDER/SCRIPT_NAME.log"

#if folder not availble then it will create file -p
mkdir -p $LOGS_FOLDER
if [ $? -ne 0 ]; then
	echo -e "$R File not created: $LOGS_FOLDER $N"
	exit 1
fi	

echo "Script started executing: $(date)" | tee -a $LOG_FILE
#userid for checking root access or not
if [ USERID -ne 0]; then
	echo "Please run using root privilege"
	exit 1
fi	

validate() {
	if [ $1 -ne 0 ]; then
		echo -e "$2 installation $R failure $N" | tee -a $LOG_FILE
		exit 1
	else
		echo "$2 installation $G Successful $N" | tee -a $LOG_FILE
}

#passed the argument to install packages
for package in $@
do
	dnf list installed $package &>> $LOG_FILE
	
	if [ $? -ne 0 ]; then
		dnf install $package -y &>> $LOG_FILE
		validate $? "$package"
	else
		echo "Package already installed: $package" | tee -a $LOG_FILE
	fi	
done