#!/bin/bash

# echo "Please enter your pin number:"

# read PIN # here read command is used to take input from user and store it in variable PIN

# echo "you have entered pin is : $PIN"




echo "Please enter your pin number:"

read -s PIN # here read command is used to take input from user and store it in variable PIN

echo "you have entered pin is : $PIN"

TIMESTAMP=$(date +%F_%T)

echo "Current Timestamp is : $TIMESTAMP"

