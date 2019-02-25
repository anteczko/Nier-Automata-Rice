
#!/bin/bash

#scrot shot.jpg -q 100

import -window root -resize 12% shot.png

#ffmpeg -i shot.jpg -vf "boxblur=5:1" blured.jpg
#convert -blur 0x0 shot.jpg blured.jpg
#ffmpeg -i shot.jpg -vf stereo3d=sbs2l blured.jpg
#convert shot.jpg -modulate 100,100,huerotate blured.jpg
#convert shot.jpg -channel RG -blur 0x8 blured.jpg
convert shot.png -colorspace gray shot.png
#convert shot.jpg -channel A -blur 0x3 blured.jpg
#composite -stereo +15 shot.jpg shot.jpg blured.jpg
#convert shot.jpg -channel RB -page +20+20 -background none -flatten  blured.jpg
composite -stereo -6-2 shot.png shot.png blured.png
#composite -stereo -100+100 blured.jpg blured.jpg blured.jpg
#convert -blur 0x3 blured.jpg blured.jpg
#composite -stereo +5-5 blured.jpg blured.jpg blured.jpg



#convert -blur 0x5 blured.jpg blured.jpg
#convert left right \( -clone 1 -set colorspace RGB -channel r -separate +channel \) \( -clone 0 -set colorspace RGB -channel g -separate +channel \) \( -clone 1 -set colorspace RGB -channel b -separate +channel \) -delete 0,1 -combine blured.jpg
feh -FZ blured.png &
#feh -F shot.jpg &
rofi -show run
pkill -f "feh.*blured.png"
rm ./shot.png
rm ./blured.png
