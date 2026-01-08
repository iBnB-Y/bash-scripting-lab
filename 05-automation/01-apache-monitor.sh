#!/bin/bash
# Apache monitor with logging
SERVICE="apache2"
LOGFILE="/home/ibnb/apache-monitor.log"


timestamp() {
    date +"%Y-%m-%d %H:%M:%S"
}

if systemctl is-active --quiet "$SERVICE"; then
    echo "$(timestamp) - $SERVICE is running" >> "$LOGFILE"
    exit 0
else
    echo "$(timestamp) - $SERVICE is DOWN, attempting restart" >> "$LOGFILE"
    sudo systemctl restart "$SERVICE"
    if systemctl is-active --quiet "$SERVICE"; then
        echo "$(timestamp) - $SERVICE successfully restarted" >> "$LOGFILE"
        exit 1
    else
        echo "$(timestamp) - FAILED to restart $SERVICE" >> "$LOGFILE"
        exit 2
    fi
fi



