#!/bin/bash

USERUID=$( id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
LOGS_FOLDER="/var/log/shell-scripts.logs"
SCRTIP_NAME=$( echo $0 | cut -d "." -f1)
LOGS_FILE="$LOGS_FOLDER/$SCRTIP_NAME.log"
SOURCE_DIR=/home/ec2-user/app/logs
mkdir -p $LOGS_FIE

if [ $USERID -ne 0 ]
    then
        echo -e "$R ERROR:: Please run this script with root access $N " | tee -a $LOG_FILE
        exit 1
     else
            echo -e "$G Your running with root access $N " | tee -a $LOG_FIE

fi

validate ( ) {

if [ $? -eq 0]
    then
            echo -e "$G SUCCESS :: $1 is installed $N " | tee -a $LOG_FIE
    else
            echo -e "$R ERROR :: $1 installation is failed" | tee -a $LOG_FIE
 fi    

}


echo "script execution started at $(date)"

FILES_TO_DELETE+$(find . -name "*.log" -mtime +14)  

while IFS= read -r filepath
do
    echo "files are deleted from file path"
    rm -f "$filepath"
done <<< "$FILES_TO_DELETE" 




