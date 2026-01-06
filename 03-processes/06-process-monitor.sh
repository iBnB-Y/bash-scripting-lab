#!/bin/bash
# Monitor a process and alert if missing

PROCESS="apache2"

if pgrep "$PROCESS" > /dev/null; then
    echo "$PROCESS is running"
else
    echo "ALERT: $PROCESS is NOT running"
fi
