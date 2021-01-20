#!/bin/bash

echo "BlueArrow - Starting to prepare that bad boi"
echo "Checking..."

# checking for config
# exit if it doesn't exists
if [ ! -f './config' ]; then
    echo "config not found, exiting"
    exit 0
fi

# checking for program_list
# exit if it doesn't exists
if [ ! -f './program_list' ]; then
    echo "program_list not found, exiting"
    exit 0
fi

# include config
source ./config

# checking for install_cmd command
# exit if not set
if [ "$install_cmd" = "" ]; then
    echo '$install_cmd is not set, exiting'
    exit 0
fi

echo "Checks done, all good"


