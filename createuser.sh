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

#Set the default password
MYPASS="redhat"

#Check if you are a root user or not
WHOAMI=`/usr/bin/whoami`
if [ "$WHOAMI" != "root" ]; then
echo "No,you dont have the permission"
echo "you must be root user to create user"
exit
fi

#check the user is already exits or not

/usr/bin/id $NAME
if [ $? -eq 0 ]; then
echo "$NAME is already exits,please give another name"
exit
fi

#Add the user

/usr/sbin/useradd $NAME
if [ $? -ne 0 ]; then
echo "There is some problem while creating the user"
exit
fi

#setting the password
echo "$MYPASS" | /usr/bin/passwd --stdin "$NAME"
if [ $? -ne 0 ]; then
echo "There is some problem while setting the $NAME password"
exit
fi

#Make the user as superuser
/usr/sbin/usermod -a -G wheel $NAME
if [ $? -ne 0 ]; then
echo "There is some problem while giving super user access to $NAME"
exit
fi

#Force the user to change his password
/usr/bin/chage -d 0 $NAME
if [ $? -ne 0 ]; then
echo "There is some problem while giving the age"
exit
fi

echo "Successfully added the $NAME user"
