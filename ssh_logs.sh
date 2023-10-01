#!/bin/bash

log_dir="/var/log/auth.log"
output_file="/home/zeeshan/Desktop/output.log"

current_time=$(date +"%s")
five_minutes_ago=$((current_time - 300))


awk -v five_minutes_ago="$five_minutes_ago" '$1 >= five_minutes_ago' "$log_dir" > "$output_file"
