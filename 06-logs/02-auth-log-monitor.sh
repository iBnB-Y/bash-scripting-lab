#!/bin/bash
# Phase 6 - Logs
# 02-auth-log-monitor.sh
# Show last 10 failed login attempts

echo "=== Last 10 failed login attempts ==="
sudo grep "Failed password" /var/log/auth.log | tail -n 10
