#!/bin/bash

LOG="/var/log/auth.log"

echo "Watching auth.log for failed login attempts..."
echo "Press CTRL+C to stop."

sudo tail -Fn0 "$LOG" | while read line; do
    if echo "$line" | grep -q "Failed password"; then
        echo "$(date '+%F %T') - Failed SSH login detected"
    fi
done
