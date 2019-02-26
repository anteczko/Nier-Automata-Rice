#!/bin/bash
echo "I'm going to install nesessary dependences"
sudo apt-get update
sudo apt-get install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf libxcb-xrm0 libxcb-xrm-dev automake libxcb-shape0-dev suckless-tools -y

echo "Downloading and compiling i3-gaps-next"
cd ~/Nier-Automata-Rice/
git clone https://github.com/Airblader/i3 gaps
cd gaps
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install
cd ..
sudo rm -rf gaps

echo "I3 gaps was sucessfully installed!"
