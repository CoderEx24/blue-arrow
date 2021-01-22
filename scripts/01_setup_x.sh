#!/bin/bash

# download necessary stuff
git clone 'https://github.com/CoderEx24/dwm' '/tmp/dwm'
git clone 'https://github.com/CoderEx24/slstatus' '/tmp/slstatus'
wget 'https://dl.suckless.org/tools/dmenu-5.0.tar.gz' -P '/tmp'
tar xf '/tmp/dmenu-5.0.tar.gz'

# compile and install dwm
cd /tmp/dwm
sudo make clean install

# compile and install slstatus
cd /tmp/slstatus
sudo make clean install

# compile and install dmenu
cd '/tmp/dmenu-5.0'
sudo make clean install

# cleanup - remove all unnecessary stuff
rm -rf '/tmp/dwm' '/tmp/dmenu-5.0' '/tmp/slstatus' '/tmp/dmenu-5.0.tar.gz'
