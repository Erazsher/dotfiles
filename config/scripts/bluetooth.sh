#!/bin/sh
#bluetooth ON OR OFF
choices="ON\nOFF"
chosen=$(echo "$choices"| dmenu -i -p "BLUETOOTH")
case "$chosen" in
	ON) echo "power on"| bluetoothctl && herbe "Bluetooth turned on";;
	OFF) echo "power off"| bluetoothctl && herbe "Bluetooth turned off";;

esac







