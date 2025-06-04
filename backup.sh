#!/bin/bash

# Set backup directory
BACKUP_DIR="/var/backups/moodle"
DATE=$(date +%Y%m%d_%H%M%S)

# Create backup directory if it doesn't exist
mkdir -p $BACKUP_DIR

# Backup database
docker exec moodle_db pg_dump -U moodle moodle > $BACKUP_DIR/moodle_db_$DATE.sql

# Backup moodledata
tar -czf $BACKUP_DIR/moodledata_$DATE.tar.gz moodledata/

# Backup config
cp config.php $BACKUP_DIR/config_$DATE.php

# Remove backups older than 30 days
find $BACKUP_DIR -type f -mtime +30 -delete 