#!/bin/bash
# Terminate already running bar instances
killall -q polybar
killall -q compton

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done


#polybar tabs & sleep 1 &
#polybar phantom &
#polybar tabsSmall

: '
polybar tabs &
sleep 2 &
polybar tabsSmall &
polybar phantom &
polybar pattern1 &
compton --config ~/rice/files/compton.conf
'

polybar tabs & sleep 2
polybar tabsSmall & sleep2
polybar phantom &
compton --config ~/rice/files/compton.conf

feh --bg-scale ~/rice/resources/WallpaperSmall.png
