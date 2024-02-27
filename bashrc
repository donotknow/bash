export PATH=$HOME/.bin:$HOME/.bin/lib:/usr/local/git/bin:/usr/local/sbin:$PATH:/Library/Developer/CommandLineTools/usr/bin

export LSCOLORS="Cxfxcxdxbxegedabagacad"
export LS_COLORS="di=1;32;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:"

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
[[ -r $HOME/.bin/work-secrets ]] && source $HOME/.bin/work-secrets
[[ -r $HOME/.bin/work ]] && source $HOME/.bin/work
[[ -r $HOME/.bin/personal ]] && source $HOME/.bin/personal

export PS1="\[${White}\]\W\[${Yellow}\]\$(__git_ps1 '(%s)') \[${White}\]\u\[${PROMPT_COLOR}\]\$\[${Color_Off}\] "

# fix up ssh
# eval "$(/usr/bin/ssh-agent -s)" > $HOME/Library/Logs/ssh-agent.log
/usr/bin/ssh-add --apple-load-keychain 2>/dev/null
