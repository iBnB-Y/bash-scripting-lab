#!/bin/bash

CONFIG="/etc/ssh/sshd_config"

echo "SSH hardening status:"
grep -E "^PermitRootLogin" "$CONFIG"
grep -E "^PasswordAuthentication" "$CONFIG"
grep -E "^Port" "$CONFIG"
