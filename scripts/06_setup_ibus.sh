#!/usr/bin/bash

sudo sh "echo -e \"GTK_IM_MODULE=ibus\\nQT_IM_MODULE=ibus\\nXMODIFIERS=@im=ibus\"" >> /etc/environment

