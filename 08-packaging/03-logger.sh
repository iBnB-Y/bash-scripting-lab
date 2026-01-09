#!/bin/bash
# Phase 8
# Standard logging function

LOG_FILE="/tmp/bash-lab.log"

log() {
    echo "$(date '+%F %T') - $1" >> "$LOG_FILE"
}

log "Script started"
log "Doing some work"
log "Script finished"
