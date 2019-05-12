#!/bin/bash
#conky --config ~/rice/files/conky3 && gnome-terminal -- top && i3-msg [class="Gnome-terminal"] floating enable && i3-msg [class="Gnome-terminal"] move position 900 px 820 px && rofi -show r$

import -window root -resize 7% shot.png
#I make screenshot in low resolution named shot.png
gnome-terminal -- top
#launching application called gnome-terminal and launching 'top' program in it
convert shot.png -colorspace gray shot.png
#using making screenshot greyscale and saving it to shot.png
composite -stereo -2-1 shot.png shot.png blured.png
#making 3d abberation effect (change -2-1 to -6-3 to make stronger)
feh -FZD blured.png &
#this is quite important i'm opening blured screenshot, in D-deamon, and F-fullscreened, also adding & so i can make other things alongside

i3-msg [class="Gnome-terminal"] floating enable
i3-msg [class="Gnome-terminal"] move position 660 px 390 px
i3-msg [class="Gnome-terminal"] resize set 610 320
#using i3 terminal commands to enable floating, move, and resize middle window

conky --config ~/Nier-Automata-Rice/configs/conky3
#launching conky, no need for moving it or resizing because size and position is defiend in it's conifg, but you could change them by i3 commands

#"""
#There you can optionaly move and resize windows using i3 commands, in that case conky
#i3-msg [title="conky*"] floating disable
#i3-msg [title="conky*"] floating enable
#i3-msg [title="conky*"] resize set 310 300
#i3-msg [title="conky*"] move position 1360 px 390 px
#"""
i3-msg [title="feh.*blured.png"] move position 0 0
#moving fet to left bottom conrner, sometines something screws up and it's moing a little by themself
i3-msg [title="conky*"] focus
i3-msg [class="Gnome-terminal"] focus
i3-msg [title="conky*"] focus
#giving focus to every window, so the appear atop of feh
#i3-msg [title="feh.*blured.png"] move position 0 0
#feh -FZD blured.png
rofi -show run -theme ~/Nier-Automata-Rice/configs/automata_white.rasi
#running conky with showing where config is, if you don't specyfy it wouls look in default rof configs folder
#now everything waits when rofi closes, that's quite clever
killall conky
killall gnome-terminal-server
#killing applicationn, rofi will disappear by pressing escape or anywhere else

pkill -f "feh.*blured.png"
rm ./shot.png
rm ./blured.png
#removing screenshots
