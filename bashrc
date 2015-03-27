export PATH=$HOME/.bin:/usr/local/git/bin/:$PATH
export LSCOLORS=Cxfxcxdxbxegedabagacad
export DISPLAY=:0.0
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export EDITOR='mate -w'
export SVN_EDITOR=$EDITOR

if [ -f ~/.bin/colors ]; then
	source ~/.bin/colors
fi

if [ -f ~/.bin/aliases ]; then
	source ~/.bin/aliases
fi

if [ -f ~/.bin/aliases-git ]; then
	source ~/.bin/aliases-git
fi

if [ -f ~/.bin/aliases-svn ]; then
	source ~/.bin/aliases-svn
fi

if [ -f ~/.bin/personal ]; then
	source ~/.bin/personal
fi

export PS1="\[${White}\]\W\[${Yellow}\]\$(__git_ps1) \[${White}\]\u\[${Purple}\]\$\[${Color_Off}\] "
