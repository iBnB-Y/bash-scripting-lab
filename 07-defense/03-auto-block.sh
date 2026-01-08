#!/bin/bash

THRESHOLD=5
LOG="/var/log/auth.log"

grep "Failed password" "$LOG" |
awk '{print $(NF-3)}' |
sort | uniq -c |
while read count ip; do
    if [ "$count" -ge "$THRESHOLD" ]; then
        echo "Blocking suspicious IP: $ip"
        sudo iptables -A INPUT -s "$ip" -j DROP
    fi
done
