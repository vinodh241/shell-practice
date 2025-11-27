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


        validate () {
            if [ $? -eq 0 ]
            then
                echo -e "$G SUCCESS:: $1 is installed successfully $N"
            else
                echo -e "$R ERROR:: $1 installation failed $N"
            fi
        }




dnf list installed vim and unzip

if [ $? -ne 0 ]
then
    echo -e  "$R ERROR:: httpd is not installed .... going to install now...$N "

    dnf install vim unzip -y 

    validate "$1 and $2"

else
    echo -e  "$Y  vim and unzip  is already installed .. Nothing to do $N "     

fi
 


