#!/bin/bash
source `dirname $0`"/bashrc"

if [[ "$1" = "-h" || "$1" = "--help" ]]; then
	echo "";
	echo "`basename $0`: Mounts an AFP volume."
	echo ""
	echo -e "${BIYellow}Usage:${Color_Off}"
	echo "      `basename $0` username:password@server sharepoint"
	echo ""
	echo -e "${BICyan}Valid options:${Color_Off}"
	echo "      -h [--help]    show this help message"
	echo ""
	echo -e "${BIWhite}Examples:${Color_Off}"
	echo "      `basename $0` user:pass@server.local folder"
	echo ""
	exit 0
fi

if [ -f /Volumes/$2 ]; then
	printError "/Volumes/$2 exists and is a file, not a directory.";
	return
fi

if [ -d /Volumes/$2 ]; then
	printError "/Volumes/$2 exists";
	return
fi

mkdir /Volumes/$2 &&
mount -t afp afp://$1/$2 /Volumes/$2 &&
echo "$2 successfully mounted at /Volumes/$2"
