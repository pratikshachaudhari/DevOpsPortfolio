#!/bin/bash

# Backup script to tar and compress a given folder

SOURCE_FOLDER="$1"
BACKUP_FOLDER="$2"
DATE=$(date +%Y%m%d_%H%M%S)
LOG_FILE="backup-log.txt"

if [[ -z "$SOURCE_FOLDER" || -z "$BACKUP_FOLDER" ]]; then
  echo "Usage: $0 <source_folder> <backup_folder>"
  exit 1
fi

FILENAME="backup_$DATE.tar.gz"
DEST="$BACKUP_FOLDER/$FILENAME"

echo "[$DATE] Starting backup of $SOURCE_FOLDER..." >> $LOG_FILE
tar -czf "$DEST" "$SOURCE_FOLDER" 2>> $LOG_FILE

if [ $? -eq 0 ]; then
  echo "[$DATE] Backup successful: $DEST" >> $LOG_FILE
else
  echo "[$DATE] Backup failed" >> $LOG_FILE
fi
