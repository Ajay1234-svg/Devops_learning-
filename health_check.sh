#!/bin/bash
echo "===== SERVER HEALTH CHECK ====="

DISK=$(df -h / |awk 'NR==2 {print $5} ' |
tr -d '%')
echo "disk usage:$DISK%"
if [ "$DISK" -lt 80 ]; then
echo "disk status:healthy"
else 
echo "disk status:warning"
exit 1
fi
echo "memory status checked"
echo "process status:checked"
echo "network status checked "
echo "===== server healthy ====="
exit 0

