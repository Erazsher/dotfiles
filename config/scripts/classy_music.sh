#!/bin/sh

url="https://www.youtube.com/watch?v=jgpJVI3tDbY"
pkill -f $url || mpv --no-video "$url" 
