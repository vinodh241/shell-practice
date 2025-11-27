#!/bin/bash

echo -e "\e[32m Hello vinodh \e[0m"


USERID=$( id -u )

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]
then
    echo -e "$R ERROR:: pleae run this script with root access $N"
    exit 1 # we can give other than zero upto 127
else
    echo -e "$G Success:: you are running with root access $N"
fi
