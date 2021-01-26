#!/bin/bash

# clone the ultimate vim configuration
git clone https://github.com/amix/vimrc ~/.vim_runtime

# install it
cd ~/.vim_runtime
chmod +x ./install_awesome_vimrc.sh
./install_awesome_vimrc.sh

# clone YouCompleteMe
git clone https://github.com/ycm-core/YouCompleteMe ./my_plugins/YouCompleteMe/

# install it
cd ./my_plugins/YouCompleteMe
git submodule --init --recursive
python3 install.py --clangd-completer --java-completer

