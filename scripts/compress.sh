#!/bin/bash
read -p "Enter file or directory to compress: " src
read -p "Enter output archive name: " dest

if [ -e "$src" ]; then
    tar -czvf "$dest.tar.gz" "$src"
    echo "Compression complete: $dest.tar.gz"
    log_action "Compressed $src into $dest.tar.gz"
else
    echo "Invalid source file or directory"
fi
