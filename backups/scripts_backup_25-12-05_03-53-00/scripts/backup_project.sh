#!/bin/bash

SOURCE="../scripts"
DEST="../backups"
DATE=$(date +%y-%m-%d_%H-%M-%S)
BACKUP_NAME="scripts_backup_$DATE.tar.gz"

echo "Backing up scripts..."
tar -czf "$DEST/$BACKUP_NAME" "$SOURCE"

if [ $? -eq 0 ]; then
    echo "Backup successful: $BACKUP_NAME"
else
    echo "Backup failed!"
fi


