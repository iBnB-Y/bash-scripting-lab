#!/bin/bash
# Install secure-watch system-wide

set -e

echo "Installing secure-watch..."

sudo install -m 755 secure-watch /usr/local/bin/secure-watch
sudo install -m 644 secure-watch.conf /etc/secure-watch.conf
sudo touch /var/log/secure-watch.log
sudo chmod 644 /var/log/secure-watch.log

echo "Installed successfully."
echo "Run: secure-watch -h"
