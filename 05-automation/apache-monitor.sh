#!/bin/bash

# Checks if Apache is running.
# Wrote this because I got tired of checking manually.

SERVICE=apache2
LOG=/var/log/apache_monitor.log

if systemctl is-active --quiet $SERVICE; then
    echo "$(date) - Apache is running" >> $LOG
else
    echo "$(date) - Apache is down. Restarting it." >> $LOG
    systemctl restart $SERVICE
fi

