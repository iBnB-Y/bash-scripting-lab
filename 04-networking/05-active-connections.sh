#!/bin/bash
# Show active connections

echo "Active connections:"
ss -tunap | head -20
