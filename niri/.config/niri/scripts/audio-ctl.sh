#!/bin/bash

SINK=$(wpctl status | grep "Starship/Matisse" | grep "Analog Stereo" | head -1 | awk '{for(i=1;i<=NF;i++) if($i ~ /^[[:digit:]]+\.$/) print $i}' | tr -d '.')
case "$1" in
  up)   wpctl set-volume $SINK 0.1+ -l 1.0 ;;
  down) wpctl set-volume $SINK 0.1- ;;
  mute) wpctl set-mute $SINK toggle ;;
esac
