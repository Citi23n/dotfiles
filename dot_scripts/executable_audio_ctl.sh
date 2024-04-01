#!/usr/bin/env bash

case $1 in
	mute)	pactl set-sink-mute @DEFAULT_SINK@ toggle	;;
	up)	pactl set-sink-volume @DEFAULT_SINK@ +10%	;;
	down)	pactl set-sink-volume @DEFAULT_SINK@ -10%	;;
	*)	echo "Oops. Try again"	;;
esac
