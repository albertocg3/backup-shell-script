#!/bin/bash

#Complete database backup
USER="<your db user>"
PASSWORD="<your db password>"

#Path where the backup will be saved
BACKUP_PATH="<your path>"
DATE=$(date +%Y-%m-%d)

#Start the backup with mysqldump
mysqldump --user=$USER --password=$PASSWORD --databases dbname > $BACKUP_PATH/dbname_$DATE.sql

#Compress the backup copy
gzip $BACKUP_PATH/dbname_$DATE.sql