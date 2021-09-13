#!/usr/bin/bash

while :
do
read -p "enter the user that you want to lock: " user
if [ -z $user ]
then
        echo "username is not provided"
else
        if id $user  &> /dev/null
then
        passwd -l $user
        exit 0
else
echo "provided user $user  doesnot exist"
fi
fi
done
