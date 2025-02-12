#!/bin/bash

echo "Checking system logs for errors..."
grep "error" /var/log/syslog | tail -5
