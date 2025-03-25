#!/bin/bash
read -p "Enter directory path: " dir
if [ -d "$dir" ]; then
    ls -lh "$dir"
    log_action "Listed files in $dir"
else
    echo "Invalid directory"
fi
