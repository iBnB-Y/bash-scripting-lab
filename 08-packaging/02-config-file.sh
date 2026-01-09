#!/bin/bash
# Phase 8
# Load config instead of hardcoding

CONFIG="./app.conf"

if [[ ! -f "$CONFIG" ]]; then
    echo "Missing config file"
    exit 1
fi

source "$CONFIG"

echo "App name: $APP_NAME"
echo "Log file: $LOG_FILE"
