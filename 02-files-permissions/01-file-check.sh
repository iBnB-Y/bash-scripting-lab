#!/bin/bash 
# check if  a  file exists

FILE="test.txt"

if [ -f "$FILE" ]; then 
    echo "File '$FILE' exists"

else 
     echo "File '$FILE' does not exist"
fi
