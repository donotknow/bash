export PATH=$HOME/.bin:$HOME/.bin/lib:/usr/local/git/bin:/usr/local/sbin:$PATH
export LSCOLORS=Cxfxcxdxbxegedabagacad
export DISPLAY=:0.0
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export EDITOR='mate -w'
export SVN_EDITOR=$EDITOR

[[ -r $HOME/.bin/colors ]] && source $HOME/.bin/colors

if [[ "$OSTYPE" =~ "darwin" ]]; then
	export PROMPT_COLOR=$Purple
else
	export PROMPT_COLOR=$Green
fi

[[ -r $HOME/.bin/aliases ]] && source $HOME/.bin/aliases
[[ -r $HOME/.bin/aliases-git ]] && source $HOME/.bin/aliases-git
[[ -r $HOME/.bin/aliases-svn ]] && source $HOME/.bin/aliases-svn
[[ -r $HOME/.bin/work ]] && source $HOME/.bin/work
[[ -r $HOME/.bin/personal ]] && source $HOME/.bin/personal

export PS1="\[${White}\]\W\[${Yellow}\]\$(__git_ps1 '(%s)') \[${White}\]\u\[${PROMPT_COLOR}\]\$\[${Color_Off}\] "
