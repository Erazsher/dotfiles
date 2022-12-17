#!/bin/sh
#bluetooth ON OR OFF
choices="ON\nOFF"
chosen=$( echo "$choices" | wofi --dmenu -p "Bluetooth")
case "$chosen" in
	ON) echo "power on"| bluetoothctl && notify-send "Bluetooth turned on";;
	OFF) echo "power off"| bluetoothctl && notify-send "Bluetooth turned off";;

esac







