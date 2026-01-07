#!/bin/bash
# Phase 6 - System error summary

LOG="/var/log/syslog"

echo "=== System errors (last 20) ==="
sudo grep -i "error" "$LOG" | tail -n 20
