#!/bin/bash
# Phase 7 - Defense
# 02-alert.sh
# Send alert on failed login

FAILED_COUNT=$(grep "Failed password" /var/log/auth.log | wc -l)

if [ "$FAILED_COUNT" -gt 5 ]; then
    echo "ALERT: $FAILED_COUNT failed logins detected!"
fi
