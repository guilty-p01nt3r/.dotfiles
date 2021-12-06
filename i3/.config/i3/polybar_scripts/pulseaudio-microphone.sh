#!/bin/sh
#### CONFIG ####
COLOR_MUTED="%{F#6b6b6b}"
END_COLOR="%{F-}"  # For Polybar colors

#################

status() {
  #DNAME=$(pactl info | sed -En 's/Default Source: (.*)/\1/p')
  DNAME=$(pactl get-default-source)
  if [ ${#DNAME} -gt 10 ]; then
      DNAME=$(echo $DNAME |  awk ' {print substr($0, 12, 20);}') 
  fi
  MUTED=$(pamixer --default-source --get-mute)

  if [ "$MUTED" = "true" ]; then
    echo "${COLOR_MUTED}  MUTE ${DNAME} ${END_COLOR}"
  else
    VOL=$(pamixer --default-source --get-volume)
    VOL=$(pamixer --default-source --get-volume)
    echo " ${VOL}% ${DNAME}"; 
  fi
}

listen() {
    status

    LANG=EN; pactl subscribe | while read -r event; do
        if echo "$event" | grep -q "source" || echo "$event" | grep -q "server"; then
            status
        fi
    done
}

toggle() {
    pamixer --default-source --toggle-mute
}

increase() {
    pamixer --default-source --increase 5
}

decrease() {
    pamixer --default-source --decrease 5
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
