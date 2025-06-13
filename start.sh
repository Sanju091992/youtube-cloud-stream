#!/bin/bash

# Google Drive से वीडियो डाउनलोड करें और नाम रखें video.mp4
wget --no-check-certificate \
'https://drive.google.com/uc?export=download&id=1FaQE1P2013xFutZ3H2jWQ3PrjhaKEC1B' \
-O video.mp4

# YouTube Live Stream पर Loop में भेजें
while true
do
  ffmpeg -re -stream_loop -1 -i video.mp4 -c:v libx264 -preset veryfast -b:v 3000k -c:a aac -b:a 160k -ar 44100 -f flv "rtmp://a.rtmp.youtube.com/live2/dy4k-c4dp-zwmu-tbvh-bsgk"
done
