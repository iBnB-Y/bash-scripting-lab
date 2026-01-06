#!/bin/bash
# Find a process by name

read -p "Enter process name: " PROC

pgrep -l "$PROC"
