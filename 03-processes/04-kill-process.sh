#!/bin/bash
# Kill a process safely

read -p "Enter PID to terminate: " PID

if ps -p "$PID" > /dev/null; then
    kill "$PID"
    echo "Process $PID terminated"
else
    echo "Process not found"
fi
