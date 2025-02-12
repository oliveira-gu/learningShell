#!/bin/bash
echo "Running processes:"
ps aux
echo "Enter the PID to kill:"
read pid
kill $pid
echo "Process $pid killed!"


