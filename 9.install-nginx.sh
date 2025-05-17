#!/bin/bash


if [ $UID -ne 0 ]

then
echo "Runnig as root user"
sudo dnf install nginx -y
exit 1
 else

echo "Installing Nginx"
sudo dnf install nginx -y

fi