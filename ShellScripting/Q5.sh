#!/bin/bash

directory=$1
if [ ! -d "$directory" ]; then
  echo "Directory does not exist."
  exit 1
fi

total_lines=0
for log_file in "$directory"/*.log; do
  if [ -f "$log_file" ]; then
    file_lines=$(wc -l < "$log_file")
    echo "$log_file has $file_lines lines."
    total_lines=$((total_lines + file_lines))
  fi
done
echo "Total lines in all .log files: $total_lines"
