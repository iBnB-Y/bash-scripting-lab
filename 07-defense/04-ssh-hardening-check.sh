#!/bin/bash
# Phase 7 - Defense
# 04-ssh-hardening-check.sh
# Simple SSH hardening checks

SSH_PORT=$(grep "^Port" /etc/ssh/sshd_config | awk '{print $2}')
PermitRoot=$(grep "^PermitRootLogin" /etc/ssh/sshd_config | awk '{print $2}')

echo "SSH Port: ${SSH_PORT:-22}"
echo "PermitRootLogin: ${PermitRoot:-yes}"
