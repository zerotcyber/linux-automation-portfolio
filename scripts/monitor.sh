#!/bin/bash

# Log output to the logs folder
LOG_FILE="../logs/system_health.log"
DATE=$(date '+%y-%m-%d_%H:%M:%S')

echo "--- Health Check: $DATE ---" >> $LOG_FILE

# 1. Check Disk Usage
# This extracts the percentage number (e.g., 45) from the root (/) drive
DISK_USAGE=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//g')

if [ "$DISK_USAGE" -gt 80 ]; then
    echo "[CRITICAL] Disk space low: $DISK_USAGE% used!" >> $LOG_FILE
else
    echo "[OK] Disk space normal: $DISK_USAGE% used." >> $LOG_FILE
fi

# 2. Check RAM
RAM_FREE=$(free -h | awk 'NR==2 {print $4}')
echo "[INFO] Free RAM: $RAM_FREE" >> $LOG_FILE


