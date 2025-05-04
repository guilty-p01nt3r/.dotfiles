#!/bin/bash

# Find all event devices
for device in /dev/input/event*; do
    echo "Listening to $device"
    sudo evtest "$device" &
done

# Wait for all evtest processes to finish
wait
