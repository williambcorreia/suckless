#!/bin/sh

SSID=$(iw dev wlo1 link | awk '/SSID/{ print $2 }')
X=$(iw dev wlo1 link)

if [ "$X" = "Not connected." ]; then
	printf " 󰖪"
else
	printf " 󰖩 $SSID"
fi
