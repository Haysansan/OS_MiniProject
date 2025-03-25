#!/bin/bash

# Load utility scripts
source scripts/logger.sh

while true; do
    echo "File and Directory Management Program"
    echo "1. List files and directories"
    echo "2. Create backup"
    echo "3. Count files"
    echo "4. Display disk usage"
    echo "5. Search for a file"
    echo "6. Compress files"
    echo "7. Exit"
    read -p "Choose an option: " choice

    case $choice in
        1) source scripts/list_files.sh ;;
        2) source scripts/backup.sh ;;
        3) source scripts/count_files.sh ;;
        4) source scripts/disk_usage.sh ;;
        5) source scripts/search_files.sh ;;
        6) source scripts/compress.sh ;;
        7) echo "Exiting..."; exit 0 ;;
        *) echo "Invalid choice, try again." ;;
    esac
done
