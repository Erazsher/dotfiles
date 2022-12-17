#!/bin/sh
URL=$1

# function: guide
guide () {
  echo "Youtube URL is required."
}

# function: download audio and convert to mp3
download_and_convert() {
  yt-dlp   $URL -x --audio-quality BEST --audio-format flac   --output "~/music/synth/%(title)s.%(ext)s"
}

# check parameter
if [ $# = 0 ]; then
  guide
else
  download_and_convert
fi
