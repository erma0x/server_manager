#!/bin/bash
filepath_program="python3 project/oracle"
# Find duplicate processes
PIDS=$(pgrep -d "," -f "$filepath_program" | awk -F ',' '{for (i=1;i<=NF;i++) a[$i]++} END {for (i in a) if (a[i]>1) print i}')

# Keep only one process and kill the others
for PID in $PIDS
do
  KILLPID=$(echo "$PID" | awk '{print $1+1}')
  kill $KILLPID
done
