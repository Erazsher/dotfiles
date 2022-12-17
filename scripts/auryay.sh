#!/bin/sh
yay -Syu --aur  
wait
herbe "AUR packages updated"
sleep 0.2
pkill -SIGUSR1 herbe
