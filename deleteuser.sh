#!/bin/bash
###############
#purpose:To create user on the fly
#version:v1.0
#owner:Nagasai
#input:username
#output:new user creation

#Take user name from command line

NAME=$1
if [ ! $NAME ]; then
echo "please give the user name to create"
echo "usage: $0 <username>"
exit
fi


#Check if you are a root user or not
WHOAMI=`/usr/bin/whoami`
if [ "$WHOAMI" != "root" ]; then
echo "No,you dont have the permission"
echo "you must be root user to create user"
exit
fi

#check the user is already exits or not

/usr/bin/id $NAME
if [ $? -ne 0 ]; then
echo "$NAME is not exits,please give another name"
exit
fi

#Add the user

/usr/sbin/userdel $NAME
if [ $? -ne 0 ]; then
echo "There is some problem while creating the user"
exit
fi


echo "Successfully delete the $NAME user"
