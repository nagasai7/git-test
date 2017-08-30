#!/bin/bash
###############
#purpose:
#version:
#owner  :
#input  :
#output :

ANS=Y
while [ "$ANS" == "Y" -o "$ANS" == "y" ]
do
echo "please give the user name you wish to add: "
read OURUSER
./createuser.sh $OURUSER
echo "Do you want to add another user: "
read ANS
done
