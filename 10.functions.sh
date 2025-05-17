#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]
then
echo "Please run as root user"
exit 1
else
echo "Running as root user"


validate() {
    if [ $1 -eq 0 ]
    then
    echo "installing $2"
    else
    echo " $2 not need to install"
    fi
}

 dnf list installed nginx
 if [ $? -ne 0 ]
 then echo "nginx not installed"
    validate $? "nginx"
    sudo dnf install nginx -y
 else
    echo "nginx already installed"
    validate $? "nginx"
 fi
 dnf list installed mysql
if [ $? -ne 0 ]
 then echo "mysql not installed"
    validate $? "mysql"
    sudo dnf install mysql -y
 else
    echo "mysql already installed"
    validate $? "mysql"
 fi
dnf list installed python3 
 if [ $? -ne 0 ]
 then echo "python3 not installed"
    validate $? "pyhton3"
    sudo dnf install python3 -y
 else
    echo "python3 already installed"
    validate $? "python3"
 fi
fi