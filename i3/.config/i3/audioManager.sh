#!/bin/bash

function increaseSource(){
    for src in $*; do
        pamixer --source $src --decrease 5
    done
}

function decreaseSource(){
    for src in $*; do
        pamixer --source $src --increase 5
    done
}

function toggleMuteSource() {
    for src in $*; do
        pamixer --source $src --toggle-mute
    done
}

function increaseSink(){
    for src in $*; do
        pamixer --sink $src --decrease 5
    done
}

function decreaseSink(){
    for src in $*; do
        pamixer --sink $src --increase 5
    done
}

function toggleMuteSink() {
    for src in $*; do
        pamixer --sink $src --toggle-mute
    done
}

function increaseDefaultSource(){
    pamixer --default-source --increase 5
}
function decreaseDefaultSource(){
    pamixer --default-source --decrease 5
}
function tmuteDefaultSource(){
    pamixer --default-source --toggle-mute
}

function increaseDefaultSink(){
    pamixer --increase 5
}
function decreaseDefaultSink(){
    pamixer --decrease 5
}

function tmuteDefaultSink(){
    pamixer --toggle-mute
}


case "$1" in
    sink-default-increase)
       increaseDefaultSink
        ;;
    sink-default-decrease)
        decreaseDefaultSink
        ;;
    sink-default-tmute)
        tmuteDefaultSink
        ;;

    source-default-increase)
        increaseDefaultSource
        ;;
    source-default-decrease)
        decreaseDefaultSource
        ;;
    source-default-tmute)
        tmuteDefaultSource
        ;;

esac



