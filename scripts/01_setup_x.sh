#!/bin/bash

scripts_dir="`pwd`"

# download necessary stuff
curl https://dl.suckless.org/dwm/dwm-6.2.tar.gz --output /tmp/dwm.tar.gz
curl 'https://dl.suckless.org/tools/dmenu-5.0.tar.gz' --output '/tmp/dmenu.tar.gz'
git clone https://git.suckless.org/slstatus /tmp/slstatus
git clone https://github.com/muennich/sxiv /tmp/sxiv
cd /tmp
tar -xvf dmenu.tar.gz
tar -xvf dwm.tar.gz

# compile and install dwm
cd dwm-6.2
cp config.def.h config.h
patch config.h $scripts_dir/etc/myconfig_dwm.diff
sudo make clean install

# compile and install slstatus
cd /tmp/slstatus
cp $scripts_dir/etc/slstatus_config.h config.h
sudo make clean install

# compile and install dmenu
cd '/tmp/dmenu-5.0'
sudo make clean install

# compile and install sxiv
cd /tmp/sxiv
sudo make clean install

# cleanup - remove all unnecessary stuff
rm -rf /tmp/dwm-6.2 '/tmp/dmenu-5.0' /tmp/slstatus /tmp/sxiv '/tmp/dmenu.tar.gz' /tmp/dwm.tar.gz
