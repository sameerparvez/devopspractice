#!bin/bash

echo "All varibales passed in a script :: $@"
echo "No of Varibales ruuning in script :: $#"
echo "script name :: $0"
echo "process id of script ::$$"
echo "present working directory of user :: $PWD"
echo "user name of user :: $USER"
echo "user id if user :: $UID"
echo "home directory if user :: $HOME"
echo "current shell :: $SHELL"
sleep 10
echo "process id of last command :: $!"
echo "exit status of lass command : $?"