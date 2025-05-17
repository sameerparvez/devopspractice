#!/bin/bash
USERID=$(id -u)

if [ $USERID -eq 0 ]
then
echo "Running as root user"
exit 0
else
echo "Please run as root user"
exit 1
fi

vaidate() {
    if [ $1 -eq 0 ]
    then
    echo "installing $2"
    else
    echo " $2 not need to install"
    fi
}
 dnf list installed nginx
 validate $? "nginx"
 sudo dnf install nginx -y

 dnf list installed python3
 validate $? "python3"
 sudo install puthon3 -y

 dnf list installed mysql
    validate $? "my sql"
    sudo dnf install mysql -y
