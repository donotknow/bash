export PATH=$HOME/.bin:/usr/local/git/bin/:$PATH
export LSCOLORS=Cxfxcxdxbxegedabagacad
export DISPLAY=:0.0

export EDITOR='mate -w'
export SVN_EDITOR='mate -w'


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
