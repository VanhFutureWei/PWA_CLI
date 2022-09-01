#! /bin/bash
###################################################################################
# script to create a command line for checking if a site is viable to
# convert to PWA type app
#
###################################################################################

# VERSION="1.0"
# SCRIPT_NAME=$(basename "$0")
# OUTPUT_DIR="$HOME/pwa_maker"

use_default_setting(){
# 	echo "generating Android project for you"
# 	bubblewrap init --manifest 

# 	bubblewrap init --manifest="$arg1" 
# 	echo "Please answer a few question"
	default_setting.exp
 
 }


check_preRequisite(){
	check_nodeVersion
	check_bubblewrap
	check_manifest
}

# Keep readlinkf function
readlinkf() {
    [ "${1:-}" ] || return 1
    max_symlinks=40
    CDPATH='' # to avoid changing to an unexpected directory

    target=$1
    [ -e "${target%/}" ] || target=${1%"${1##*[!/]}"} # trim trailing slashes
    [ -d "${target:-/}" ] && target="$target/"

    cd -P . 2>/dev/null || return 1
    while [ "$max_symlinks" -ge 0 ] && max_symlinks=$((max_symlinks - 1)); do
        if [ ! "$target" = "${target%/*}" ]; then
            case $target in
            /*) cd -P "${target%/*}/" 2>/dev/null || break ;;
            *) cd -P "./${target%/*}" 2>/dev/null || break ;;
            esac
            target=${target##*/}
        fi

        if [ ! -L "$target" ]; then
            target="${PWD%/}${target:+/}${target}"
            printf '%s\n' "${target:-/}"
            return 0
        fi
        link=$(ls -dl -- "$target" 2>/dev/null) || break
        target=${link#*" $target -> "}
    done
    return 1
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


self=$(readlinkf "$0")
script_dir=${self%/*}
{
	. "${script_dir}/lib/check_bash.sh"
    . "${script_dir}/lib/check_expect.sh"
	. "${script_dir}/lib/check_node_npm.sh"
	. "${script_dir}/lib/manifest_util.sh"
	. "${script_dir}/lib/check_bubblewrap.sh"
	. "${script_dir}/lib/make_proj.sh"
}

check_bashVersion
check_expectVersion
# check_preRequisite

# make_Android_proj

# reading_config_file
 










