#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 1 # we can give other than zero upto 127   
else
    echo "Success:: you are running with root access"
fi

dnf list installed mysql

