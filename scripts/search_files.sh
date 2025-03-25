#!/bin/bash
search_files() {
    read -p "Enter directory path: " dir
    read -p "Enter filename or extension to search: " name
    if [ -d "$dir" ]; then
        find "$dir" -type f -name "*$name*" | tee /dev/tty
        log_action "Searched for $name in $dir"
    else
        echo "Invalid directory"
        log_action "Failed to search for $name in $dir (invalid directory)"
    fi
}
