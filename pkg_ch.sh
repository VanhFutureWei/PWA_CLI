#! /bin/bash


check_bashVersion(){
	bash_version=$(bash --version)
	echo "your bash version is: $bash_version"

	bash_path=$(which bash)
	echo " "
	echo "your bash path is: $bash_path"
	
}

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

reading_config_file(){
	echo "reading data from default config file"
	echo "setting up JDK and SDK"
}

building_Android_proj(){
	echo "I'm building Android project for you"
	bubblewrap build
}

install_bubblewrap(){
	echo "Installing bubblewrap command line..."
	arg1=$1
	echo "the manifest is: $arg1"

	source npm i -g @bubblewrap/cli
	# source npm install -g npm@8.13.1

	echo "generating Android project for you"
	# bubblewrap init --manifest 

	echo "Please answer a few question"
	reading_config_file

	bubblewrap init --manifest $arg1
	# result=$(bubblewrap init --manifest $arg1)
	# echo "result from running bubblewrap is: $result"
	building_Android_proj
}

create_manifest() {
	echo " I'm creating simple manifest base on host URL ..."

	install_bubblewrap https://sadchonks.com/manifest.json
}

make_proj_no_manifest(){
	echo "Since you don't have the manifest. I will create one for you"
	create_manifest
}

make_proj_with_your_manifest(){
	echo "make Android project..."
	arg1=$1
	install_bubblewrap $arg1

}


check_manifest() {
	echo "looking for your manifest "

	FILE=manifest.json
	if test -f "$FILE"; then
	    echo "$FILE exists."
	    make_proj_with_your_manifest $FILE
	else
		echo "no manifest.json file on your system"
		make_proj_no_manifest 
	fi

}


make_Android_proj(){
	echo "create Android project..."

	check_manifest

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
		make_Android_proj	

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

			make_Android_proj
		fi

	fi

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








