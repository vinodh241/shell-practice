#!/bin/bash

USERID=$( id -u )
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOG_FOLDER="/var/log/myscript"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOG_FILE="$LOG_FOLDER/$SCRIPT_NAME.log"

mkdir -p $LOG_FOLDER
echo -e "script started exuction time : $(date)" | tee -a $LOG_FILE

if [ $USERID -ne 0 ]
then
    echo -e "$R ERROR:: pleae run this script with root access $N" | tee -a $LOG_FILE
    exit 1 # we can give other than zero upto 127
else
    echo -e "$G Success:: you are running with root access $N" | tee -a $LOG_FILE
fi
        validate () {
            if [ $? -eq 0 ]
            then
                echo -e "$G SUCCESS:: $1 is installed successfully $N"  | tee -a $LOG_FILE
            else
                echo -e "$R ERROR:: $1 installation failed $N" | tee -a $LOG_FILE
            fi
        }

dnf list installed nodejs &>> $LOG_FILE

if [ $? -ne 0 ]
then
    echo -e  "$R ERROR:: $1 is not installed .... going to install now...$N " | tee -a $LOG_FILE

    dnf install vim nodejs -y  &>> $LOG_FILE

    validate "$1
else
    echo -e  "$Y nodejs  is already installed .. Nothing to do $N "   | tee -a $LOG_FILE 

fi
 
