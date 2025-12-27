#!/bin/bash

USER_ID=$(id -u)
R="\e[32m"
N="\e[37m"
G="\e[31m"
Y="\e[33m"

LOG_DIR="/var/log/shell_script"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOG_FILE="$LOG_DIR/$SCRIPT_NAME.log"

mkdir -p $LOG_DIR
echo "script started executing $(date)" | tee -a $LOG_FILE

if [ $USER_ID -ne 0 ]; then
    echo"Please run the script with root access"
    exit 1 #if failure is other than 0 we will stop executing the script
fi


validate() {
    if [ $1 -ne 0]; then
        echo -e "Installing...$2 $R Failure $N" | tee -a $LOG_FILE
        exit 1
    else 
        echo -e "Installing...$2 $R Success $N"  | tee -a $LOG_FILE  
    fi    
}

dnf list installed mysql &>>$LOG_FILE
if [ $? -ne 0 ]; then
    dnf install mysql -y &>>$LOG_FILE
    validate $? "MYSQL"
else 
    echo -e "MYSQL is already available... $Y SKIPPING $N" | tee -a $LOG_FILE
fi    


