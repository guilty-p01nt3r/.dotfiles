#!/usr/bin/bash
curr_layout=$(setxkbmap -query | grep layout| awk '{ print $2}' )

if [[ $curr_layout == "us" ]]; then
    setxkbmap it
else
    setxkbmap us
fi
