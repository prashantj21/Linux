#!/bin/bash

DATE=$(date +%F)

BACKUP_FILE="/backups/nginx_backup_$DATE.tar.gz"

tar -czvf $BACKUP_FILE /etc/nginx /usr/share/nginx/html

echo "Backup Created: $BACKUP_FILE" >> /backups/backup_log.txt

echo "Verifying backup:" >> /backups/backup_log.txt
tar -tzf $BACKUP_FILE >> /backups/backup_log.txt
