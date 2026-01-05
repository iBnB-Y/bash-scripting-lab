#!/bin/bash
# Check if a command exists

read -p "Enter a command to check: " CMD

if command -v $CMD >/dev/null 2>&1; then
    echo "$CMD is installed and in your PATH"
else
    echo "$CMD is NOT found"
fi

