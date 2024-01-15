#!/bin/bash



echo "0 45 23" > /sys/class/drm/card1/device/gpu_od/fan_ctrl/fan_curve
echo "1 60 40" > /sys/class/drm/card1/device/gpu_od/fan_ctrl/fan_curve
echo "2 70 50" > /sys/class/drm/card1/device/gpu_od/fan_ctrl/fan_curve
echo "3 80 90" > /sys/class/drm/card1/device/gpu_od/fan_ctrl/fan_curve
echo "4 90 100" > /sys/class/drm/card1/device/gpu_od/fan_ctrl/fan_curve
echo "c" > /sys/class/drm/card1/device/gpu_od/fan_ctrl/fan_curve


echo "85" > /sys/class/drm/card1/device/gpu_od/fan_ctrl/fan_target_temperature
echo "c" > /sys/class/drm/card1/device/gpu_od/fan_ctrl/fan_target_temperature
