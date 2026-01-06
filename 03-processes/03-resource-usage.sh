#!/bin/bash
# Show system resource usage

echo "CPU usage:"
top -bn1 | head -5

echo ""
echo "Memory usage:"
free -h
