#!/usr/bin/bash

sudo git clone https://github.com/vlang/v /opt/v
sudo cd /opt/v
sudo make
sudo ./v symlink
