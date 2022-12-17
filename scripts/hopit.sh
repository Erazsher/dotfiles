#!/bin/sh

url="https://www.youtube.com/watch?v=7LC36EODhWk"
pkill -f $url || mpv --no-video "$url" 
