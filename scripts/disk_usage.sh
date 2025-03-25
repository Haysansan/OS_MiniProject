#!/bin/bash
read -p "Enter directory path: " dir
if [ -d "$dir" ]; then
    du -sh "$dir"
    log_action "Checked disk usage of $dir"
else
    echo "Invalid directory"
fi
