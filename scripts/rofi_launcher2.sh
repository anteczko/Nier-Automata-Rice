#!/bin/bash
#conky --config ~/rice/files/conky3 && gnome-terminal -- top && i3-msg [class="Gnome-terminal"] floating enable && i3-msg [class="Gnome-terminal"] move position 900 px 820 px && rofi -show run

gnome-terminal -- top &&
i3-msg [class="Gnome-terminal"] floating enable
i3-msg [class="Gnome-terminal"] move position 660 px 390 px
i3-msg [class="Gnome-terminal"] resize set 610 320

conky --config ~/rice/files/conky3
i3-msg [title="conky*"] floating disable
i3-msg [title="conky*"] floating enable
i3-msg [title="conky*"] resize set 310 300
i3-msg [title="conky*"] move position 1360 px 390 px


rofi -theme automata_white.rasi -show run
killall conky
killall gnome-terminal-server
