#!/bin/bash

echo "System Monitoring Report"
echo "-------------------------"
echo "CPU Usage:"
top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4"% used"}'
echo "Memory Usage:"
free -h | awk 'NR==2{printf "Used: %s / Total: %s\n", $3, $2}'
echo "Disk Usage:"
df -h | awk '$NF=="/"{printf "Used: %s / Total: %s\n", $3, $2}'
