#!/bin/bash

#step1
#check the user whether root user or not if (id -u) is zero then root user# 
#else user is not user and will inform user to run with root user

USER=$(id -u)
if [ $USER -ne 0 ]; then 
    echo "Error:: Please run using root/admin user"
    exit 1
fi

#step 2
##if Nginx already install we will skip installing else we will install Nginx
dnf list installed nginx

if [ $? -eq 0 ]; then
    echo"Nginx is already installed e\[31m SKIPPING.. e\[0m installing"
else    
    dnf install nginx -y
    validate $? "NGINX"

#Function to validate installation

validate() {
    if [ $1 -ne 0 ]; then
        echo "Error installing $2"
        exit 1
    else
        echo"Installing $1"    
fi
}    







