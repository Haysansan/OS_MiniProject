#!/bin/bash
list_files() {
    read -p "Enter directory path: " dir
    if [ -d "$dir" ]; then
        ls -lh "$dir"
        log_action "Listed files in $dir"
    else
        echo "Invalid directory"
        log_action "Failed to list files in $dir (invalid directory)"
    fi
}
