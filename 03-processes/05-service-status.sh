#!/bin/bash
# Check service status

read -p "Enter service name (e.g., ssh): " SERVICE

systemctl status "$SERVICE" --no-pager
