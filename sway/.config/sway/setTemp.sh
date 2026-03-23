#!/usr/bin/bash

#echo "Setting fan target"
#echo "85" > fan_target_temperature
#echo "c" > fan_target_temperature
#echo "Committed fan target"

cd /sys/class/drm/card1/device/gpu_od/fan_ctrl

echo "Setting fan curve into"
echo "0 45 23"  >  fan_curve
echo "1 60 40"  >  fan_curve
echo "2 70 50"  >  fan_curve
echo "3 80 70"  >  fan_curve
echo "4 95 100" > fan_curve
echo c > fan_curve
echo "Committed fan curve"

