#!/bin/bash

# Load utility scripts
source scripts/logger.sh

show_menu() {
    echo "File and Directory Management Program"
    echo "1. List files and directories"
    echo "2. Create backup"
    echo "3. Count files"
    echo "4. Display disk usage"
    echo "5. Search for a file"
    echo "6. Compress files"
    echo "7. Exit"
}

while true; do
    show_menu
    read -p "Choose an option: " choice

    case $choice in
        1) list_files ;;
        2) create_backup ;;
        3) count_files ;;
        4) display_disk_usage ;;
        5) search_files ;;
        6) compress_files ;;
        7) 
            read -p "Are you sure you want to exit? (y/n): " confirm
            if [[ "$confirm" =~ ^[Yy]$ ]]; then
                echo "Exiting..."; exit 0
            fi
            ;;
        *) 
            echo "Invalid choice, please try again." ;;
    esac
done
