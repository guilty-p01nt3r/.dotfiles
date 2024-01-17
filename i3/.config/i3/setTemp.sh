#!/usr/bin/bash

cd /sys/class/drm/card1/device/gpu_od/fan_ctrl

echo "Setting fan target"
echo "85" > fan_target_temperature
echo "c" > fan_target_temperature
echo "Committed fan target"

sleep 1

echo "Setting fan curve into"
echo "0 45 23"  >  fan_curve
echo "1 60 40"  >  fan_curve
echo "2 70 50"  >  fan_curve
echo "3 80 90"  >  fan_curve
echo "4 90 100" > fan_curve
echo c > fan_curve
echo "Committed fan curve"

