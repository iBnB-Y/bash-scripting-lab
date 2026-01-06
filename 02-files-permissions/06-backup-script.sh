#!/bin/bash
# Simple backup script

SOURCE="$HOME/bash-scripting-lab"
DEST="$HOME/backup"
DATE=$(date +%F)

mkdir -p "$DEST"
tar -czf "$DEST/backup-$DATE.tar.gz" "$SOURCE"

echo "Backup completed: backup-$DATE.tar.gz"
