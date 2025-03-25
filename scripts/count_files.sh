#!/bin/bash
count_files() {
    read -p "Enter directory path: " dir
    if [ -d "$dir" ]; then
        count=$(find "$dir" -type f | wc -l)
        echo "Total files: $count"
        log_action "Counted $count files in $dir"
    else
        echo "Invalid directory"
        log_action "Failed to count files in $dir (invalid directory)"
    fi
}
