#!/bin/bash
# Phase 6 - Brute force detection with threshold
# Flags IPs with more than 5 failed SSH attempts

THRESHOLD=5
ALERT_LOG="/home/ibnb/suspicious-ips.log"

echo "=== Suspicious IPs (failed SSH logins > $THRESHOLD) ==="

sudo journalctl _COMM=sshd \
| grep "Failed password" \
| awk '{print $(NF-3)}' \
| sort \
| uniq -c \
| sort -nr \
| while read count ip; do
    if [ "$count" -gt "$THRESHOLD" ]; then
        echo "$(date '+%Y-%m-%d %H:%M:%S') - $ip ($count attempts)" | tee -a "$ALERT_LOG"
    fi
done

