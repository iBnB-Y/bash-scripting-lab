#!/bin/bash
# Phase 7 - Defense
# 01-live-auth-watch.sh
# Monitor live authentication attempts

echo "=== Monitoring live authentication attempts ==="
sudo tail -f /var/log/auth.log | grep --line-buffered "Failed password"
