#!/bin/sh

# If recording is in process, cancel it to start transcoding
running=$(ps ax | grep ffmpeg | wc -l)
if [[ $running != 1 ]]; then
    pkill ffmpeg;
    exit 0;
fi

resolution=$(xdpyinfo | grep -oP 'dimensions:\s+\K\S+')

ffmpeg -s $resolution -framerate 60 -f x11grab -i :0.0+0,0 -f alsa -ac 2 -i pulse -acodec libvorbis "$@".mkv
