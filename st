#!/bin/bash
source `dirname $0`"/bashrc"

if [[ "$1" = "-h" || "$1" = "--help" ]]; then
	echo "";
	echo "`basename $0`: Show the status of working tree for \`vc_type\`."
	echo "    Also see \`git status --help\` and \`svn status --help\`."
	echo ""
	echo -e "${BIYellow}Usage:${Color_Off}"
	echo "    `basename $0`"
	echo ""
	echo -e "${BICyan}Valid options:${Color_Off}"
	echo "    -h [--help]    show this help message"
	echo ""
	echo -e "${BIWhite}Examples:${Color_Off}"
	echo "    `basename $0`"
	echo ""
	exit 0
fi

vcType=`vc_type`

if [[ $vcType == 'git' ]]; then
	git status "$@"
elif [[ $vcType == 'svn' ]]; then
	svn st "$@" --ignore-externals | grep -v "^[[:space:]]*X"
fi

unset vcType
exit $?
