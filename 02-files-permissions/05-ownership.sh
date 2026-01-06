#!/bin/bash
# Change file ownership

FILE="owner-test.txt"
touch "$FILE"

sudo chown root:root "$FILE"
ls -l "$FILE"
