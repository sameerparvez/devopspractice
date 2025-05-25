#!/bin/bash

Softwares=("nginx" "mysql" "python3")
 R="\e[31m"
 G="\e[32m"
 
 validateuser() {
    if [ "$(id -u )"-eq 0 ]
    then 
 echo -e "$G using root user"

else 
echo -e "$R use root user"
fi
    }

 validatesoftware() {
 if [ $1 -eq 1 ]
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

#
output
    [ ec2-user@ip-172-31-36-212 ~/devopspractice ]$ sh 12.coloursincode.sh
12.coloursincode.sh: line 8: [: 1001-eq: unary operator expected
 use root user
Installed Packages
nginx.x86_64                                               2:1.20.1-22.el9_6.2                                               @rhel-9-appstream-rhui-rpms
 nginx is already installed
Last metadata expiration check: 0:16:51 ago on Tue May 20 09:30:21 2025.
Package nginx-2:1.20.1-22.el9_6.2.x86_64 is already installed.
Dependencies resolved.
Nothing to do.
Complete!
12.coloursincode.sh: line 8: [: 1001-eq: unary operator expected
 use root user
Installed Packages
mysql.x86_64                                                 8.0.41-2.el9_5                                                  @rhel-9-appstream-rhui-rpms
 mysql is already installed
Last metadata expiration check: 0:16:53 ago on Tue May 20 09:30:21 2025.
Package mysql-8.0.41-2.el9_5.x86_64 is already installed.
Dependencies resolved.
Nothing to do.
Complete!
12.coloursincode.sh: line 8: [: 1001-eq: unary operator expected
 use root user
Installed Packages
python3.x86_64                                                   3.9.21-2.el9                                                   @rhel-9-baseos-rhui-rpms
 python3 is already installed
Last metadata expiration check: 0:16:55 ago on Tue May 20 09:30:21 2025.
Package python3-3.9.21-2.el9.x86_64 is already installed.
Dependencies resolved.
Nothing to do.
Complete!
