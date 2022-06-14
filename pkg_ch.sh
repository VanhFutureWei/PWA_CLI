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
version=$(node -v)
npm_ver=$(npm -v)

echo "your bash path is: $bash_path"
echo "your bash version is: $BASH_VERSION"
echo "your Node.js is: $version"
echo "your npm version is: $npm_ver"
echo "Installing Bubblewrap on to your system"
npm i -g @bubblewrap/cli

echo " It's now going to generate an Android project from an existing Web Manifest"
bubblewrap init --manifest https://my-twa.com/manifest.json



$SHELL