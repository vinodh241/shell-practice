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
    echo "mysql is not installed .... going to install now... "

  dnf install mysql -y 

        if [ $? -eq 0 ]
        then 
            echo "mysql is installed successfully..."
        else
            echo "ERROR:: mysql installation failed.."
            exit 1
        fi
else
    echo "mysql is already installed on this system..."
    exit 1
fi

 
