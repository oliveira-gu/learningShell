#!/bin/bash

echo "Countdown from 5..."
for i in $(seq 5 -1 1); do
	echo "$i"
	sleep 1 # Wait 1 second
done
echo "Blast off!"
