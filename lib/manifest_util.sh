#! /bin/bash
###################################################################################
# script to create a command line for checking if a site is viable to
# convert to PWA type app
#
###################################################################################


# VERSION="1.0"
# SCRIPT_NAME=$(basename "$0")
# OUTPUT_DIR="$HOME/pwa_maker"


create_manifest() {
	echo " I'm creating simple manifest base on host URL ..."

	#  create a manifest.json file
	#  using simple default setting here
	#  then create android project with that manifest file


	# building_Android_proj
	
}

make_proj_default_manifest(){
	echo "Since you don't have the manifest. I will create one for you"
	create_manifest
}

make_proj_with_your_manifest(){
	echo "make Android project with your manifest ..."
	arg1=$1
	# building_Android_proj

}


check_manifest() {
	echo "looking for your manifest "

	FILE=manifest.json
	if test -f "$FILE"; then
	    echo "$FILE exists."
	    make_proj_with_your_manifest $FILE
	else
		echo "no manifest.json file on your system"
		make_proj_default_manifest 
	fi

}