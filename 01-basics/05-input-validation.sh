#!/bin/bash
# Validate input

read -p "Enter a number: " NUM

if [[ ! $NUM =~ ^[0-9]+$ ]]; then
    echo "Error: Not a number"
    exit 1
fi

echo "You entered number: $NUM"
