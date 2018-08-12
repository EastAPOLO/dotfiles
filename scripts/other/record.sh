#!/bin/sh

# If recording is in process, cancel it to start transcoding
running=$(ps ax | grep ffmpeg | wc -l)
if [[ $running != 1 ]]; then
    pkill ffmpeg;
    exit 0;
fi

ffmpeg -video_size 1920x1080 -framerate 60 -f x11grab -i :0.0+0,0 -f alsa -ac 2 -i pulse -acodec libvorbis "$@".mkv
