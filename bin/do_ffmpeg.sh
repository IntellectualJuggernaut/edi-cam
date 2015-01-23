#!/bin/sh

FNAME="$1"
VSIZE="$2"

: ${FNAME:="ffmpeg-release-32bit-static"}
: ${VSIZE:="320x240"}

/home/root/bin/${FNAME}/ffmpeg -s ${VSIZE} -f video4linux2 -i /dev/video0 -f mpeg1video \
-b 800k -r 30 http://127.0.0.1:8082



# /home/root/bin/ffmpeg-2.4.3-32bit-static/ffmpeg -s 320x240 -f video4linux2 -i /dev/video0 -f mpeg1video \
# -b 800k -r 30 http://127.0.0.1:8082

