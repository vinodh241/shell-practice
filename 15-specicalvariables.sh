#!/bin/bash

echo " All variables in the script are : $@"

echo " Number of variables passed to the script are : $#"

echo " Script name is : $0"

echo " First variable is : $1"

echo "present working directory is : $PWD"

echo " Home directory of the user is : $HOME"

echo " Current User logged in is : $USER" 

echo "PID of the current script is : $$"

echo "PID of the last executed command is : $!"

Numebr1=10
Numebr2=20

SUM=$(($Numebr1+$Numebr2))
echo "The sum of $Numebr1 and $Numebr2 is : $SUM"

echo "The status of the last executed command is : $?" 

