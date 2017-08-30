#!/bin/bash







COUNT=1
while [ $COUNT -le 100 ]
do
echo "the count is $COUNT"
COUNT=`expr $COUNT + 1`
done
