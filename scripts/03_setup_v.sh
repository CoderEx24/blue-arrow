#!/usr/bin/bash

sudo git clone https://github.com/vlang/v /opt/v
cd /opt/v
sudo make
sudo ./v symlink
