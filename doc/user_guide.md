# User Guide

## Introduction
This script is intended to be used to check if a Web site is suitable to be converted to
PWA app. A PWA is an Android app that creates from the web site.

## Prerequisite
This will check to see if 
1. user machine has the require software install
2. Such as node.js version 12 or later
3. npm install
4. bubblewrap tool install
5. JDK and Android SDK
If any of these requirement is missing the script will attempt to download the correct version
and install them without user intervention.
One all the prequisite are met it will check to see if the web site meet th following requirement
- manifest.json file
if the this is not present will try to generate a default manifest.json file for the site

## What is does
Then the script will try to build an Android app for the site.
To complete the build user may have to provide some info which script will attempt to provide a default
setting reading from a configuration file.
 if succeed the APK for the site should be 
present with the name app-release-unsigned-aligned.apk in the current directory

## How to use it
This APK may be installed into the phone as a normal APK.