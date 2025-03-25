#!/bin/bash
read -p "Enter file or directory to backup: " src
read -p "Enter backup destination: " dest

if [ -e "$src" ]; then
    cp -r "$src" "$dest"
    echo "Backup completed."
    log_action "Backup of $src created at $dest"
else
    echo "Invalid source file or directory"
fi
