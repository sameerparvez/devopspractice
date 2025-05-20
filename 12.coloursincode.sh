#!/bin/bash

Softwares=("nginx" "mysql" "python3")
 R = "\e[31m"
 G = "\e[32m"
 
 validateuser() {
    if [id -u -eq 0]
    then 
 echo -e "$G using root user"

else 
echo -e "$R use root user"
fi
    }

 validatesoftware() {
 if [$1 -eq 1]
 then
 echo -e "$G installing $2"
    else
    echo -e "$R $2 is already installed"
    fi
    }
 
 validateuser   
 dnf list installed nginx
 validatesoftware $? "nginx"
 sudo dnf install nginx -y

validateuser
 dnf list installed mysql
 validatesoftware $? "mysql"
 sudo dnf install mysql -y

validateuser
 dnf list installed python3
 validatesoftware $? "python3"
    sudo dnf install python3 -y