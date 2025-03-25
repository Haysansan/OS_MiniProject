#!/bin/bash
log_action() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> script.log
}
