#!/bin/bash

#installing mysq1,nginx,python3

#need to install using sudo access checking (id -u) if it is root user it will be success 0

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Error:: Please use root privillege"
    exit 1
else
    echo "Run script with root user"
fi

#step1
dnf install nginx -y
# $? if will provide output for last used command
if [ $? -ne 0 ]; then 
    echo "Error:: installing ... nginx"
    exit 1
else 
    echo "Successful installing the nginx"
fi
#step2
dnf install mysql -y
if [ $? -ne 0 ]; then 
    echo "Error:: installing ... mysql"
    exit 1
else 
    echo "Successful installing the mysql"
fi
#step3
dnf install python3 -y
if [ $? -ne 0 ]; then 
    echo "Error:: installing ... python3"
    exit 1
else 
    echo "Successful installing the python3"
fi