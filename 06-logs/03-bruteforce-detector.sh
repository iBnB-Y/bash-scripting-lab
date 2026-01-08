#!/bin/bash
# Phase 6 - Logs
# 03-bruteforce-detector.sh
# Count failed login attempts per IP

echo "=== Failed SSH login attempts by IP ==="
sudo grep "Failed password" /var/log/auth.log | awk '{print $(NF-3)}' | sort | uniq -c | sort -nr
