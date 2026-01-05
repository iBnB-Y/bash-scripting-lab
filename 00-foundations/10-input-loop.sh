#!/bin/bash
# Ask for names and greet each one

for i in {1..3}; do
    read -p "Enter name #$i: " NAME
    echo "Hello, $NAME!"
done
