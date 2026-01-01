#!/bin/bash

if pgrep -x "pulsemixer" > /dev/null; then
	pkill -x "pulsemixer"
else
	st -c "pamixerfl" -e pulsemixer
fi
