#!/bin/bash
###################################################################################
# script to create a command line for checking if a site is viable to
# convert to PWA type app
#
###################################################################################


# VERSION="1.0"
# SCRIPT_NAME=$(basename "$0")
# OUTPUT_DIR="$HOME/pwa_maker"

check_bashVersion(){
	bash_version=$(bash --version)
	echo "your bash version is: $bash_version"

	bash_path=$(which bash)
	echo " "
	echo "your bash path is: $bash_path"
	
}
