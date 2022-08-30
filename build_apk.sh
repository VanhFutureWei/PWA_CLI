
#! /bin/bash
###################################################################################
# script to create a command line for checking if a site is viable to
# convert to PWA type app
#
###################################################################################

# VERSION="1.0"
# SCRIPT_NAME=$(basename "$0")
# OUTPUT_DIR="$HOME/pwa_maker"


# readlinkf function
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


self=$(readlinkf "$0")
script_dir=${self%/*}
{

	. "${script_dir}/lib/build_android_proj.sh"
}

# make_Android_proj

 echo "I'm building Android project for you"
# bubblewrap build
building_Android_proj