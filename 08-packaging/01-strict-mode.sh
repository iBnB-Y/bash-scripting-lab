#!/bin/bash
# Phase 8
# Strict mode example

set -euo pipefail

echo "Script started safely"

FILE="/tmp/demo-file.txt"

if [[ ! -f "$FILE" ]]; then
    echo "File does not exist: $FILE"
    exit 1
fi

cat "$FILE"
