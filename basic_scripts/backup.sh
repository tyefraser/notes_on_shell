#!/bin/bash
source_dir="/path/to/source_directory"
backup_dir="/path/to/backup_directory/$(date +'%Y%m%d')"

mkdir -p "$backup_dir"
cp -r "$source_dir" "$backup_dir"
echo "Backup of $source_dir created in $backup_dir"
