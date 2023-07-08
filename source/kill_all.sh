#!/bin/bash
filepath_program="python3 project/"
# Find all processes matching the pattern "python3 minerva/"
pids=$(pgrep -f "$filepath_program")

# If there are no processes, exit
if [ -z "$pids" ]; then
  echo "No processes found"
  exit 0
fi

# Terminate all found processes
echo "Terminating processes with PIDs: $pids"
kill $pids
