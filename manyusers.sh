#!/bin/bash
##############
#purpose:
#version:
#owner  :
#input  :
#output :
################
FILE=$1
if [ ! -f $FILE ]; then
echo "please give the correct filename"
echo "usage :$0 <file name>"
exit
fi

for OURUSER in `cat user_list`
do
./deleteuser.sh $OURUSER
done
