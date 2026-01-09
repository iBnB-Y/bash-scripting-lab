#!/bin/bash
# Phase 9
# Basic usage and help

show_help() {
    echo "Usage: $0 [-h] [-n NAME]"
    echo
    echo "Options:"
    echo "  -h        Show help"
    echo "  -n NAME   Provide your name"
}

while getopts ":hn:" opt; do
    case "$opt" in
        h) show_help; exit 0 ;;
        n) NAME="$OPTARG" ;;
        *) show_help; exit 1 ;;
    esac
done

echo "Hello ${NAME:-stranger}"
