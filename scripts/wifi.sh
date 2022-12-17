#!/bin/sh
#WIFI ON OR OFF
choices="ON\nOFF"
chosen=$(echo  "$choices"| dmenu -i -p "WIFI")
echo $chosen
case "$chosen" in
	ON)  nmcli radio wifi on && herbe "Wifi turned on" "Wait a moment";;
	OFF) nmcli radio wifi off && herbe "Wifi turned off";;

esac







