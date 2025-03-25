#!/bin/bash
display_disk_usage() {
    read -p "Enter directory path: " dir
    if [ -d "$dir" ]; then
        du -sh "$dir"
        log_action "Checked disk usage of $dir"
    else
        echo "Invalid directory"
        log_action "Failed to check disk usage of $dir (invalid directory)"
    fi
}
