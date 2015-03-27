#!/bin/bash
source `dirname $0`"/bashrc"

if [[ "$1" = "-h" || "$1" = "--help" ]]; then
	echo "";
	echo "`basename $0`: Creates a screen with the name of the current username, if it doesn’t"
	echo "      already exist. If it exists, resumes that screen."
	echo ""
	echo -e "${BIYellow}Usage:${Color_Off}"
	echo "      `basename $0`"
	echo ""
	echo -e "${BICyan}Valid options:${Color_Off}"
	echo "      -h [--help]    show this help message"
	echo ""
	echo -e "${BIWhite}Examples:${Color_Off}"
	echo "      `basename $0`"
	echo ""
	exit 0
fi

myScreen=`screen -ls | grep $USER`
if [[ $myScreen != '' ]]; then
	screen -rd
else
	screen -S $USER
fi

unset myScreen
