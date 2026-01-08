#!/bin/bash
# Phase 5 - Automation
# 01-apache-monitor.sh
# Simple Apache HTTP Server monitor

LOG_FILE="/home/ibnb/apache-monitor.log"

if systemctl is-active --quiet apache2; then
    echo "$(date '+%Y-%m-%d %H:%M:%S') - apache2 is running" >> "$LOG_FILE"
else
    echo "$(date '+%Y-%m-%d %H:%M:%S') - apache2 is NOT running" >> "$LOG_FILE"
    systemctl restart apache2
    echo "$(date '+%Y-%m-%d %H:%M:%S') - apache2 restarted" >> "$LOG_FILE"
fi
