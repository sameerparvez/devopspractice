#!/bin/bash


if [ $UID --ne 0]

then
echo "Please run this script with sudo or as root"
exit 1
 else

echo "Installing Nginx"
sudo dnf install nginx -y

fi