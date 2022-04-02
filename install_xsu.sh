#! /data/data/com.termux/files/usr/bin/bash

# This is Termux supreruser installer,
# you can safely delete this file after installation.

# This installer downloads my addtional libraries,
# for installation.

# For the source code of installation libraries,
# or there is copy of libraries file in assets folder ( Might not be updated version ).

if [ ! -d ~/.termux ]; then

    clear
    echo " "
    echo " [!] Your are on older version of Termux !!!"
    echo "     Please update and re run the Installation"
    exit

fi

clear

## Pre variable initiations ##
Dev=0

if [[ Dev == 0 ]]; then
    export BRANCH=main
else
    export BRANCH=development
fi

###   Downloading installation Libraries   ###

if [[ ! -f terre-libraries.sh ]]; then
curl -Os https://raw.githubusercontent.com/Revaleri/termux-superuser/$BRANCH/terre-libraries.sh
fi

source terre-libraries.sh

function banner_termux-superuser() {

    blue='\033[1;34m'
    light_cyan='\033[1;96m'
    reset='\033[0m'

    clear
    printf "    ${blue}################################\n"
    printf "    ${blue}##                            ##\n"
    printf "    ${blue}##     Termux Superuser       ##\n"
    printf "    ${blue}##                            ##\n"
    printf "    ${blue}################################\n"
    printf "    ${blue}|||||||  ${light_cyan}terre  ${blue}|||||||\n"
    printf "    ${blue}--------------------------------${reset}"
    echo "  "
    echo "  "
}

################# Main ################

banner_termux-superuser

apt-update

echo " "
echo " Press ENTER to continue ..."
read

banner_termux-superuser

check_tbin

install_termux-superuser

clean_terre

echo " [*] Termux needs to be restarted to work properly,"
echo "     Please restart !"
echo " "
read
exit

############### THE END #################
