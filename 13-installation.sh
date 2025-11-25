#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Error::Run script with root user"
    exit 1
fi

validate() {
    if [ $1 -ne 0 ]; then
    echo "Failure in installing... $2"
    exit 1
else 
    echo "Successful installing... $2"
fi
}

dnf install nginx -y
validate $? "nginx"

dnf install mysql -y
validate $? "Mysql"

dnf install python3 -y
validate $? "Python3"