#!/bin/sh

X=$(iw dev wlo1 link)

if [ "$X" = "Not connected." ]; then
	printf " 󰖪 "
else
	printf " 󰖩 "
fi
