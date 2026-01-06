#!/bin/bash
# Read a file line by line

FILE="test.txt"

if [ ! -f "$FILE" ]; then
    echo "File not found"
    exit 1
fi

while read -r line; do
    echo "Line: $line"
done < "$FILE"

