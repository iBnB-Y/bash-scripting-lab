#!/bin/bash
# Phase 10 - Mini Project
# secure-watch.sh
# Simple monitoring & defense tool

set -euo pipefail

LOG_FILE="$HOME/secure-watch.log"
SERVICE="apache2"
FAILED_LIMIT=3
VERBOSE=false

usage() {
    echo "Usage: $0 [-v] [-s service]"
    echo
    echo "Options:"
    echo "  -v            Verbose output"
    echo "  -s SERVICE    Service to monitor (default: apache2)"
}

log() {
    echo "$(date '+%F %T') - $1" >> "$LOG_FILE"
    $VERBOSE && echo "$1"
}

while getopts ":vs:h" opt; do
    case "$opt" in
        v) VERBOSE=true ;;
        s) SERVICE="$OPTARG" ;;
        h) usage; exit 0 ;;
        *) usage; exit 1 ;;
    esac
done

# 1 Check service
if systemctl is-active --quiet "$SERVICE"; then
    log "$SERVICE is running"
else
    log "$SERVICE is DOWN — restarting"
    sudo systemctl restart "$SERVICE"
fi

# 2 Detect failed logins
FAILED=$(grep "Failed password" /var/log/auth.log | wc -l || true)

if [ "$FAILED" -ge "$FAILED_LIMIT" ]; then
    log "WARNING: $FAILED failed login attempts detected"
fi

log "secure-watch completed"
