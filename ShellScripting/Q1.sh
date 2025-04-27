#!/bin/bash
threshold=10
total_memory=$(free -m | awk "NR==2{print $2}")
available_memory=$(free -m | awk "NR==2{print $7}")
free_memory=$((100* available_memory/total_memory))
if ("$free_memory" -lt "$threshold"); then
  echo "Alert: the free memory space is less than the threshold"
else
  echo "Memory usage is in safe limit"
fi

