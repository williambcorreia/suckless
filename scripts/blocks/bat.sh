#!/bin/sh

bat=$(acpi -b | awk '/Battery/ { print $4 }' | sed s/,//g | tr -d '%')
car=$(acpi -b | awk '/Battery/ { print $3 }' | sed s/,//g)

case 1 in
	$((bat <= 20)) )		icon="󰁻 $bat%";;
	$((bat <= 50)) )		icon="󰁾 $bat%";;
	$((bat <= 70)) )		icon="󰂀 $bat%";;
	$((bat <= 90)) )		icon="󰂁 $bat%";;
	*)				icon="󰁹 $bat%";;
esac

if [ "$car" = "Charging" ]; then
	icon="󰂄 $bat%"
	echo "$icon"
else
	echo "$icon"
fi
