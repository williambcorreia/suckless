#!/bin/sh

vol=$(pactl get-sink-volume @DEFAULT_SINK@  | awk '/^Volume/ { print $5 }'| sed 's/%//')
mute=$(pactl get-sink-mute @DEFAULT_SINK@ | awk '{ print $2 }')

case "$mute" in
	"yes") icon="󰖁" vol="" ;;
	"no")
	case 1 in
		$((vol <= 30)) )	icon="󰕿 $vol" ;;
		$((vol <= 50)) )	icon="󰖀 $vol" ;;
		$((vol <= 100)) )	icon="󰕾 $vol" ;;
		*)			icon="󱄡 $vol" ;;
	esac
	;;
esac

echo "$icon"

