#!/bin/bash

echo installing i3
sudo apt-get install feh htop vim i3 autoconf xcb-xrm
sudo apt install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf xutils-dev libtool 
sudo add-apt-repository ppa:aguignard/ppa
sudo apt-get update
sudo apt-get install libxcb-xrm-dev
sudo apt-get update -y

echo now you need to logout and run i3

mkdir gaps
cd ./gaps
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps

# compile & install
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/

# Disabling sanitizers is important for release versions!
 The prefix and sysconfdir are, obviously, dependent on the distribution.
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install

sudo echo "gaps inner 20" >> ~/.config/i3/config
sudo echo "gaps outer 10" >> ~/.config/i3/config
sudo echo "for_window [class="^.*"] border pixel 2" >> ~/.config/i3/config
i3-msg restart

rm -rf ./gaps
sudo apt-get update -y

echo installed i3-gaps and reloaded

sudo apt-get install apt-file libconfig-dev libxcomposite-dev libxdamage-dev libxrandr-dev libxinerama-dev libdbus-1-dev libdrm-dev libmesa-dev
sudo apt-get install libglu1-mesa-dev freeglut3-dev mesa-common-dev asciidoc


git clone https://github.com/chjj/compton
cd compton/
sudo make
sudo make docs
sudo make install
cd ..
rm -rf compton/
echo compton installed!
////
echo preparing to install polybar!

apt-get update
sudo apt-get install build-essential cmake libxcb libxcb-ewmh-dev python-xcbgen
sudo apt-get install cmake cmake-data pkg-config libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev python-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev

git clone --branch 3.2 --recursive https://github.com/jaagr/polybar
mkdir polybar/build
cd polybar/build
cmake ..
sudo make install

sudo apt install compton

