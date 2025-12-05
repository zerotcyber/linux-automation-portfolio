#!/bin/bash

# Define where to look and where to save 
TARGET_DIR="/var/log"
ARCHIVE_DIR="../logs/archives"

mkdir -p "$ARCHIVE_DIR"

echo "Archiving logs older than 7days..."

# The magic command:
# Find files -> older than 7 days -> execute tar gzip -> move to archive

find "$TARGET_DIR" -type f -name "*.log" -mtime +7 -readable 2>/dev/null -exec tar -czf "$ARCHIVE_DIR/archive_$(date +%Y-$m-$d)_$(basename {}).tar.gz" {} \;

echo "Archiving complete. Saved to $ARCHIVE_DIR"
