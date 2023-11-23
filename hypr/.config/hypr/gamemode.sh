#!/usr/bin/env sh

# check if argurment --on or --off is passed

HYPRGAMEMODE=$(hyprctl getoption animations:enabled | awk 'NR==2{print $2}')

if [ "$1" = "--on" ] ; then
    HYPRGAMEMODE=1
elif [ "$1" = "--off" ] ; then
    HYPRGAMEMODE=0
fi

if [ "$HYPRGAMEMODE" = 1 ] ; then
    hyprctl --batch "\
        keyword animations:enabled 0;\
        keyword decoration:drop_shadow 0;\
        keyword decoration:blur:enabled 0;\
        keyword general:gaps_in 0;\
        keyword general:gaps_out 0;\
        keyword general:border_size 1;\
        keyword decoration:rounding 0"
    exit
fi
hyprctl reload
