#!/bin/bash
read -p "Enter directory path: " dir
read -p "Enter filename or extension to search: " name
if [ -d "$dir" ]; then
    find "$dir" -type f -name "*$name*"
    log_action "Searched for $name in $dir"
else
    echo "Invalid directory"
fi
