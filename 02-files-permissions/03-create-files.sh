#!/bin/bash
# Create folder and file

DIR="demo-folder"
FILE="$DIR/info.txt"

mkdir -p "$DIR"
echo "This is a test file" > "$FILE"

echo "Created $FILE"
