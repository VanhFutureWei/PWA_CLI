#!/bin/bash
###################################################################################
# script to create a command line for checking if a site is viable to
# convert to PWA type app
#
###################################################################################


# VERSION="1.0"
# SCRIPT_NAME=$(basename "$0")
# OUTPUT_DIR="$HOME/pwa_maker"


install_bubblewrap(){
	npm i -g @bubblewrap/cli
}


check_bubblewrap(){
	echo "checking your bubblewrap version..."
	
	bubblewrap_version=$(bubblewrap --version)
	
	echo " "
	echo "your current bubblewrap version is: $bubblewrap_version"
    echo " "

	if [ -z "$bubblewrap_version" ]; then 
		# echo $?
		echo "you don't have bubblewrap install"
		echo "I'm going to install bubblewrap "
			install_bubblewrap
	
	else
		echo "your bubblewrap_version is: $bubblewrap_version"

		# maj=${bubblewrap_version:1:2}
		# echo "major: $maj"
		# minor=${bubblewrap_version:4:1}
		# echo "minor: $minor"

		# if [[($maj -lt 12)]]; then
		# 	echo "Your node.js version too old Please upgrade to the latest version"
		# elif [[($minor -gt 0)]]; then
		# 	echo "You are good to go"

		# 	# make_Android_proj
		# fi
	fi
}