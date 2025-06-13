#!/bin/bash

# Local video को loop करके stream करें (no download)
while true
do
  ffmpeg -re -stream_loop -1 -i video.mp4 -c:v libx264 -preset veryfast -b:v 1000k -c:a aac -b:a 160k -ar 44100 -f flv "rtmp://a.rtmp.youtube.com/live2/dy4k-c4dp-zwmu-tbvh-bsgk"
done
