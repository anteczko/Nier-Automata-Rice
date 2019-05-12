#!/bin/bash
#conky --config ~/rice/files/conky3 && gnome-terminal -- top && i3-msg [class="Gnome-terminal"] floating enable && i3-msg [class="Gnome-terminal"] move position 900 px 820 px && rofi -show run

gnome-terminal -- top &&
#launching gnome-terminal with program 'top' in it already running
# adding && makes run rest of script alongside, not line-by-line
i3-msg [class="Gnome-terminal"] floating enable
i3-msg [class="Gnome-terminal"] move position 660 px 390 px
i3-msg [class="Gnome-terminal"] resize set 610 320
#using i3 terminal commands to enable floating, move, resize windows
#specyfing which window to edit with [these] brackets is quite a pain in the butt

conky --config ~/Nier-Automata-Rice/configs/conky3
#launching conky with specified configuration (there are two of them)
i3-msg [title="conky*"] floating disable
i3-msg [title="conky*"] floating enable
i3-msg [title="conky*"] resize set 310 300
i3-msg [title="conky*"] move position 1360 px 390 px
#now we are editing conky

i3-msg [title="conky*"] focus
i3-msg [class="Gnome-terminal"] focus
i3-msg [title="conky*"] focus


rofi -show run -theme ~/Nier-Automata-Rice/configs/automata.rasi
#launching rofi with specified config
#also entire script is stopped untill rofi isn't closed
killall conky
killall gnome-terminal-server
#killing conky and gnome terminal
