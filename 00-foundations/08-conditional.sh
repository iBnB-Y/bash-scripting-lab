#!/bin/bash
# Check if a folder exists, create it if not

FOLDER="my-test-folder"

if [ -d "$FOLDER" ]; then
    echo "Folder '$FOLDER' already exists"
else
    echo "Folder '$FOLDER' does not exist. Creating it..."
    mkdir "$FOLDER"
fi

