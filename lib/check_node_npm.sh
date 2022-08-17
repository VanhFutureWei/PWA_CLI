
#!/bin/bash
###################################################################################
# script to create a command line for checking if a site is viable to
# convert to PWA type app
#
###################################################################################


# VERSION="1.0"
# SCRIPT_NAME=$(basename "$0")
# OUTPUT_DIR="$HOME/pwa_maker"


install_npm(){

	npm_ver=$(npm -v)
	echo "checking your npm vesion"
	if [ -z $npm_ver ]; then
		echo "there is no npm install on your system"
		sudo apt install npm
	else
		echo "your npm version is: $npm_ver"
	fi

	
}

download_node(){
	echo "downloading node.js from the internet..."
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
	#sudo apt install nodejs
}

install_node(){

	echo "Installing node.js begun..."
	download_node
	install_npm

}


check_nodeVersion(){
	echo "checking your node.js version"
	# node_version=`node --version |awk 'NR==1{gsub("v",""); print $1 }'`

	node_version=$(node --version)
	echo -n "the value is: ${node_version:- "no node.js found on this system"}"
	# export NODE_VERSION
	# echo $NODE_VERSION
	echo " "

	echo "your current node version is: $node_version"
	if [ -z "$node_version" ]; then 
		echo $?
		echo "you don't have node install"
		echo "I'm going to install node "
		# echo " position parameter 0 is: $0 "
		# echo " position parameter 1 is: $1 "
		# echo " position parameter s is: $* "
		# echo " position parameter s1 is: $# "
						
		install_node
		# make_Android_proj	

	else
		echo "your Node.js is: $node_version"

		# cut -c 1-2 <<< $NODE_VERSION
		# echo "major value is $maj"
		# cut -c 3 <<< $NODE_VERSION
		# echo "minor value is $minor"

		maj=${node_version:1:2}
		echo "major: $maj"
		minor=${node_version:4:1}
		echo "minor: $minor"

		if [[($maj -lt 12)]]; then
			echo "Your node.js version too old Please upgrade to the latest version"
		elif [[($minor -gt 0)]]; then
			echo "You are good to go"

			# make_Android_proj
		fi
	fi

}
