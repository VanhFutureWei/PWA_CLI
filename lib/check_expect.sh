#!/bin/bash
###################################################################################
# script to create a command line for checking if a site is viable to
# convert to PWA type app
#
###################################################################################
# VERSION="1.0"
# SCRIPT_NAME=$(basename "$0")
# OUTPUT_DIR="$HOME/pwa_maker"

check_expectVersion(){
	expect_version=$(expect -version)
	echo "your expect version is: $expect_version"

    if [ -z $expect_version ]; then
            echo "there is no expect install on your system"
             sudo apt install expect
        else
            echo "your expect version is: $expect_version"
        fi
	
}
