#!/bin/sh

ffmpeg -video_size 1920x1080 -framerate 60 -f x11grab -i :0.0+0,0 -f alsa -ac 2 -i pulse -acodec libvorbis "$@".mkv
