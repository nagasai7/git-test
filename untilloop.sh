#!/bin/bash







COUNT=1
until [ $COUNT -gt 100 ]
do
echo "the count is $COUNT"
COUNT=`expr $COUNT + 1`
done
