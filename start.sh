#!/bin/bash

# Google Drive से वीडियो डाउनलोड (सही ID लगी है)
wget --no-check-certificate \
 'https://drive.google.com/uc?export=download&id=1FaQE1P2013xFutZ3H2jWQ3PrjhaKEC1B' \
 -O temp_video.mp4

# FFmpeg के ज़रिए YouTube पर Stream करें
ffmpeg -re -i temp_video.mp4 \
 -c:v libx264 -preset veryfast -maxrate 3000k -bufsize 6000k \
 -pix_fmt yuv420p -g 50 -c:a aac -b:a 128k -ar 44100 \
 -f flv "rtmp://a.rtmp.youtube.com/live2/dy4k-c4dp-zwmu-tbvh-bsgk"
