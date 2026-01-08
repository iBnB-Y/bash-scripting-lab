#!/bin/bash
# Phase 7 - Defense
# 03-auto-block.sh
# Block IPs with repeated failed login attempts

THRESHOLD=3

for ip in $(grep "Failed password" /var/log/auth.log | awk '{print $(NF-3)}' | sort | uniq -c | awk -v t=$THRESHOLD '$1 > t {print $2}'); do
    sudo ufw deny from $ip
    echo "Blocked IP: $ip"
done
