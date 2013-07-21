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

export PS1="${White}\W \u${Purple}\$${Color_Off} "

if [ -f ~/.bin/aliases ]; then
   source ~/.bin/aliases
fi

if [ -f ~/.bin/aliases-git ]; then
   source ~/.bin/aliases-git
fi

if [ -f ~/.bin/aliases-svn ]; then
   source ~/.bin/aliases-svn
fi

if [ -f ~/.bin/aliases-directories ]; then
   source ~/.bin/aliases-directories
fi
