#!/bin/bash
###############
#purpose:to test the case statement
#version:1.0
#owner:Naga sai
#input:OS name
#output:comand message

MYOS=$1
case $MYOS in

ubuntu)
echo "you selected the $MYOS"
echo "usage apt-get -y upadate"
;;

centos)
echo "you seleced $MYOS"
echo "usage yum -y update"
;;

solaris)
echo "you seleced $MYOS"
echo "usage package [options]"
;;

*)
echo "you selected $MYOS"
echo "wrong choice please select the correct one"
;;
esac
