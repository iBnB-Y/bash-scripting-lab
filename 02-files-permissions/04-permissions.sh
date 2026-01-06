#!/bin/bash
# Change file permissions

FILE="permission-test.txt"

touch "$FILE"
chmod 644 "$FILE"

ls -l "$FILE"
echo "Permissions set to 644"
