#!/bin/bash
# Phase 6 - Authentication log monitoring
# Detects failed login attempts

LOG="/var/log/auth.log"

echo "=== Last 10 failed login attempts ==="
sudo grep -a "Failed password" "$LOG" | tail -n 10

