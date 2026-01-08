#!/bin/bash
# Phase 6 - Logs
# 04-error-summary.sh
# Show last 20 system errors

echo "=== Last 20 system errors ==="
sudo journalctl -p 3 -n 20 --no-pager
