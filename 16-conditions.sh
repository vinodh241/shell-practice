#!/bin/bash

USERID=$(id -u )

if [ $USERID -ne 0 ]
 then
   echo "ERROR:: Please run this script with root access"
   exit 1 # we can give other than zero upto 127 
   else 
        echo "Success:: you are running with root access"
fi
dnf list installed mysql

if [ $? -ne 0 ]
then
    echo "$R ERROR:: mysql is not installed .... going to install now... "
    dnf install mysql -y 
        if [ $? -eq 0 ]
        then
            echo "$G SUCCESS:: MySQL is installed successfully $N"
        else
            echo "$R ERROR:: MYSQL installation failed $N"
            exit 1
        fi
else
    echo "$Y MYSQL is already installed .. Nothing to do $N "   
   
fi
 
