#! /bin/bash


check_bashVersion(){
	bash_version=$(bash --version)
	echo "your bash version is: $bash_version"

	bash_path=$(which bash)
	echo "your bash path is: $bash_path"
	
}

check_nodeVersion(){
	echo "checking your node.js version"
	node_version=`node --version |awk 'NR==1{gsub("v",""); print $1 }'`
	# export NODE_VERSION
	# echo $NODE_VERSION

	echo "your current node version is: $node_version"
	if [[ -z "$node_version" ]];then
		echo "you don't have node install"
		echo "I'm going to install node "
		install_node

	else
		echo "your Node.js is: $node_version"

		# cut -c 1-2 <<< $NODE_VERSION
		# echo "major value is $maj"
		# cut -c 3 <<< $NODE_VERSION
		# echo "minor value is $minor"

		maj=${node_version:0:2}
		echo "major: $maj"
		minor=${node_version:3:1}
		echo "minor: $minor"

		if [[($maj -lt 12)]]; then
			echo "Your node.js version too old Please upgrade to the latest version"
		elif [[($minor -gt 0)]]; then
			echo "You are good to go"
			

		fi

	fi

}
install_npm(){

	npm_ver=$(npm -v)
		echo "checking your npm vesion"
		echo "your npm version is: $npm_ver"
}

download(){
	apt -v
}

install_node(){

			echo "download node.js from the internet..."
			download

			echo "Installing Bubblewrap on to your system"
			# npm i -g @bubblewrap/cli

			echo "bubblewrap: "
			echo "JDK version 8 lower or higher version is not compatible"
			echo "checking for correct path location"
			# bubblewrap doctor

			echo " It's now going to generate an Android project from an existing Web Manifest"
			# bubblewrap init --manifest https://my-twa.com/manifest.json
			install_npm

}



################################################################################################
# script start here this is the main() entry point
# bash script execute line by line start from first line to the last non comment line

clear

echo " "
echo "------------------------------------------------------------------------------------ "
echo "this script will detect the Node.JS and npm present in your system"
echo "it's also check to see if they meet the requirement of Node.js version 12.0 or above"
echo "When running Bubblewrap for the first time"
echo "it will offer to automatically download and install external dependencies"
echo "-------------------------------------------------------------------------------------"
echo " "

today=$(date )
echo "Today is: $today "
echo " "

check_bashVersion
check_nodeVersion



# echo "checking your node.js version"
# node_version=`node --version |awk 'NR==1{gsub("v",""); print $1 }'`
# # export NODE_VERSION
# # echo $NODE_VERSION
# echo "your current node version is: $node_version"
# if [[ -z "$node_version" ]];then
# 	echo "you don't have node install"
# else
# 	echo "your Node.js is: $node_version"

# 	# cut -c 1-2 <<< $NODE_VERSION
# 	# echo "major value is $maj"
# 	# cut -c 3 <<< $NODE_VERSION
# 	# echo "minor value is $minor"

# 	maj=${node_version:0:2}
# 	echo "major: $maj"
# 	minor=${node_version:3:1}
# 	echo "minor: $minor"

# 	if [[($maj -lt 12)]]; then
# 		echo "Your node.js version too old Please upgrade to the latest version"
# 	elif [[($minor -gt 0)]]; then
# 		echo "You are good to go"

# 		echo "Installing Bubblewrap on to your system"
# 		# npm i -g @bubblewrap/cli

# 		echo "bubblewrap: "
# 		echo "JDK version 8 lower or higher version is not compatible"
# 		echo "checking for correct path location"
# 		# bubblewrap doctor

# 		echo " It's now going to generate an Android project from an existing Web Manifest"
# 		# bubblewrap init --manifest https://my-twa.com/manifest.json

# 	fi


# fi








