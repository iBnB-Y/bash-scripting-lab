#!/bin/bash
# Test network connectivity

read -p "Enter host to ping (e.g. google.com): " HOST

ping -c 4 "$HOST"
