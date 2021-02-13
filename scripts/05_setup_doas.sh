#!/usr/bin/bash

sudo cp etc/doas.conf /usr/local/etc/doas.conf

git clone https://aur.archlinux.org/doas.git /tmp/doas
cd /tmp/doas

makepkg -si

