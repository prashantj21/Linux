#!/bin/bash

DATE=$(date +%F)

BACKUP_FILE="/backups/apache_backup_$DATE.tar.gz"

tar -czvf $BACKUP_FILE /etc/httpd /var/www/html

echo "Backup Created: $BACKUP_FILE" >> /backups/backup_log.txt

echo "Verifying backup:" >> /backups/backup_log.txt
tar -tzf $BACKUP_FILE >> /backups/backup_log.txt
