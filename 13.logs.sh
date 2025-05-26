#!/bin/bash

USERID=$(id -u)

LOGFILE="var/logs/practice.log"
Script_Name="echo $0 | cut -d "," -f1" 
mkdir -p $LOGFILE

if [ $? -neq 0 ]; 
then
    echo "run with root user" | tee -a $LOGFILE
else
    echo "running with root user" | tee -a $LOGFILE
    fi
 dnf list installed nginx | tee -a $LOGFILE

 if [ $? -eq 0 ];

 then
    echo "nginx is already installed" | tee -a $LOGFILE
 else
    echo "installing nginx" | tee -a $LOGFILE
    sudo dnf install nginx -y | tee -a $LOGFILE
 fi 