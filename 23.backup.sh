
# Actual process
-----------------

# 14 days old log files can be zipped and placed into destination dir ...storage team usually monitors  the destination directiory if they find any files there they move to another server.

# Before moving the file we need to check weather the below dirs available or not

# 1. source_dir 
# 2. destination_dir

# if exists

# 1. find the files
# 2. zip the files
# 3. move to destination directory
# 4. remove the files in source_directory

## sh backup.sh <Source_DIR> <Destination_DIR >




#!/bin/bash

SOURCE_DIR=$1
DEST_DIR=$2
DAYS_KEEP=${3:-14}   ## if days are  providedd that will be considered, otherwise default 14 days

LOGS_FOLDER="/var/log/shellscript.logs"
SCRTIP_NAME=$( echo $0 | cut -d "." -f1)
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"
USERUID=$( id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"



check_root(){

    if [ $USERID -ne 0 ]
    then
        echo -e "$R ERROR:: Please run this script with root access $N " | tee -a $LOG_FILE
        exit 1
     else
            echo -e "$G Your running with root access $N " | tee -a $LOG_FIE

fi

}


validate ( ) {

if [ $? -eq 0]
    then
            echo -e "$G SUCCESS :: $1 is installed $N " | tee -a $LOG_FIE
    else
            echo -e "$R ERROR :: $1 installation is failed" | tee -a $LOG_FIE
 fi    

}


check_root
mkdir -p $LOGS_FOLDER


USAGE( ){

    echo -e "$R USAGE:: $N sh 23.backup.sh <source-dir> <destination.dir> <days(optional)>"

}

if [ $# -lt 2  ]
then
    USAGE
fi    


