#!/bin/bash
#conky --config ~/rice/files/conky3 && gnome-terminal -- top && i3-msg [class="Gnome-terminal"] floating enable && i3-msg [class="Gnome-terminal"] move position 900 px 820 px && rofi -show r$

import -window root -resize 8% shot.png
gnome-terminal -- top
convert shot.png -colorspace gray shot.png
composite -stereo -3-1 shot.png shot.png blured.png
feh -FZD blured.png &

#gnome-terminal -- top
i3-msg [class="Gnome-terminal"] floating enable
i3-msg [class="Gnome-terminal"] move position 660 px 390 px
i3-msg [class="Gnome-terminal"] resize set 610 320

conky --config ~/rice/files/conky3
"""
i3-msg [title="conky*"] floating disable
i3-msg [title="conky*"] floating enable
i3-msg [title="conky*"] resize set 310 300
i3-msg [title="conky*"] move position 1360 px 390 px
"""
i3-msg [title="feh.*blured.png"] move position 0 0
i3-msg [title="conky*"] focus
i3-msg [class="Gnome-terminal"] focus
i3-msg [title="conky*"] focus
#i3-msg [title="feh.*blured.png"] move position 0 0

rofi -theme automata_white.rasi -show run
killall conky
killall gnome-terminal-server

pkill -f "feh.*blured.png"
rm ./shot.png
rm ./blured.png
