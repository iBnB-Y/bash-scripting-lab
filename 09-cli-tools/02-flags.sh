#!/bin/bash
# Phase 9
# Verbose and dry-run example

VERBOSE=false
DRY_RUN=false

while getopts ":vd" opt; do
    case "$opt" in
        v) VERBOSE=true ;;
        d) DRY_RUN=true ;;
    esac
done

run() {
    if $DRY_RUN; then
        echo "[DRY-RUN] $1"
    else
        $1
    fi
}

$VERBOSE && echo "Verbose mode enabled"

run "echo Doing real work"
