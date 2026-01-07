#!/bin/bash
# Phase 6 - Log basics
# Shows important system logs

echo "=== Available logs in /var/log ==="
ls /var/log | head -n 10

echo
echo "=== Last 10 system log entries ==="
sudo tail -n 10 /var/log/syslog 2>/dev/null || sudo tail -n 10 /var/log/messages
