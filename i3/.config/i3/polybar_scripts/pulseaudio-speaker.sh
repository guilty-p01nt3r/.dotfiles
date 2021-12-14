#!/bin/sh
#### CONFIG ####
COLOR_MUTED="%{F#6b6b6b}"
END_COLOR="%{F-}"  # For Polybar colors
ICON_HIGHV=""
ICON_LOWV=""
ICON_MUTE=""
#################

status() {
  #DNAME=$(pactl info | sed -En 's/Default Source: (.*)/\1/p')
  DNAME=$(pactl get-default-sink)
  if [ ${#DNAME} -gt 10 ]; then
      DNAME=$(echo $DNAME |  awk -F. '{print substr($0, index($0,$2),20)}') 
  fi
  MUTED=$(pamixer --get-mute)

  if [ "$MUTED" = "true" ]; then
    echo "${COLOR_MUTED} $ICON_MUTE MUTE ${DNAME} ${END_COLOR}"
  else
    VOL=$(pamixer --get-volume)
    if [ ${VOL} -gt 49 ]; then
        ICON=$ICON_HIGHV;
    else 
        ICON=$ICON_LOWV;
    fi
    echo "$ICON ${VOL}% ${DNAME}"; 
  fi
}

listen() {
    status

    LANG=EN; pactl subscribe | while read -r event; do
        if echo "$event" | grep -q "sink" || echo "$event" | grep -q "server"; then
            status
        fi
    done
}

toggle() {
    pamixer --toggle-mute
}

increase() {
    pamixer --increase 5
}

decrease() {
    pamixer --decrease 5
}


case "$1" in
    --toggle)
        toggle
        ;;
    --increase)
        increase
        ;;
    --decrease)
        decrease
        ;;
    *)
    listen
        ;;
esac
