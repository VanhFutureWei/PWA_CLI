#! /bin/bash

clear

echo "this script will detect the Node.JS and npm present in your system"
echo "it's also check to see if they meet the requirement of Node.js version 12.0 or above"
echo "When running Bubblewrap for the first time"
echo "it will offer to automatically download and install external dependencies"
echo " "
today=$(date )
echo "Today is: $today "
echo " "

bash_path=$(which bash)


NODE_VERSION=`node --version |awk 'NR==1{gsub("v",""); print $1 }'`
# export NODE_VERSION
# echo $NODE_VERSION

version=$(node -v)
npm_ver=$(npm -v)

echo "your bash path is: $bash_path"
echo "your bash version is: $BASH_VERSION"
echo "your Node.js is: $NODE_VERSION"
echo "your npm version is: $npm_ver"
# cut -c 1-2 <<< $NODE_VERSION
# echo "major value is $maj"
# cut -c 3 <<< $NODE_VERSION
# echo "minor value is $minor"

maj=${NODE_VERSION:0:2}
echo "major: $maj"
minor=${NODE_VERSION:3:1}
echo "minor: $minor"


if [[($maj -lt 12)]]; then
	echo "Your node.js version too old Please upgrade to the latest version"
elif [[($minor -gt 0)]]; then
	echo "You are good to go"
fi

echo "Installing Bubblewrap on to your system"
# npm i -g @bubblewrap/cli

echo " It's now going to generate an Android project from an existing Web Manifest"
# bubblewrap init --manifest https://my-twa.com/manifest.json



$SHELL