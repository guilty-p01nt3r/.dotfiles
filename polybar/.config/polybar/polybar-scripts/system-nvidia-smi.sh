#!/bin/sh

nvidia-smi --query-gpu=utilization.gpu,temperature.gpu,memory.used,memory.total --format=csv,noheader,nounits | tr -s ',' ' ' | awk '{ print "GPU"" "$1 "% " $2 "° " $3 "MB / " $4 "MB"}'
