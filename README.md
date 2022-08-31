# PWA_CLI

## Table of Contents

- [Introduction](#introduction)
- [Usage](#usage)
- [Limitation](#limitation)
- [Work in progresss](#work-in-progress)
- [License](#license)
- [Disclaimer](#disclaimer)

## Introduction
A script to generate an Android APK from a web site. It's simplify the process of detecting web site environment for suitability and generating Android APK with just a few keystoke from console command line by simply run the script. 

## Prerequisite
    - Node.js version 12 or later
    - npm must be installed
    - Bubblewrap cli must be installed
    - JDK and SDK must be present
    - Web site must have manifest.json present

This script will try to download and install the appropriate version of the prerequisite from the internet if one is not available or not meet the requirement

 specifically:
 
    - It's try to detect the present of node.js and determine if the version meet the requirement.
    - It's try to detect if npm is installed 
    - It's try to detect bubblewrap cli present in the environment.
    - It's also try to detect manifest.json is present


## Usage

### On Window 10
install WSL if not already present.
run the bash shell then type ./runall.exp you should see output flash by at the end you should see 

Building the Android App...
-   Generated Android APK at *./app-release-signed.apk*
-   Generated Android App Bundle at *./app-release-bundle.aab*

You may copy the APK to install on your phone.

### On Linux and MacOS

the script can be run directly in the console terminal with the command ./runall.exp


## Limitation

Currently only test on Window 10 WSL and Windows command prompt.
- Web site must have manifest.json file present

## Work in progress

auto-generate manifest.json file if one not present.

## License
see [LICENSE](./LICENSE.md) for more info


## Disclaimer

This is not an officially supported Futurewei product


