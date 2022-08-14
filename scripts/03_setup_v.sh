#!/usr/bin/bash

# don't change this to a directory owned by a user
# other than the user currently running this script
V_DIR=~/.local/lib/v/

git clone https://github.com/vlang/v $V_DIR
cd $V_DIR
make
sudo ./v symlink
