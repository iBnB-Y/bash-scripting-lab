#!/bin/bash
# Basic network monitoring script

PORT=22

if ss -tuln | grep -q ":$PORT"; then
    echo "Port $PORT is open"
else
    echo "ALERT: Port $PORT is NOT open"
fi
