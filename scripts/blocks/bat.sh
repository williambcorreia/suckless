#!/bin/sh

BAT=$(acpi -b | awk '/Battery/ { print "BAT:" $4 "%"}' | sed s/,//g)
CAR=$(acpi -b | awk '/Battery/ { print $3 }' | sed s/,//g)
FULL=$(acpi -b | awk '/Battery/ { print $3 }' | sed s/,//g)

printf "$BAT"

if [ $CAR = "Charging" ]; then
       printf " 󱐋"
fi       

if [ $FULL = Full ]; then
	printf " "
fi
