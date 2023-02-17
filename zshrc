export PATH=$HOME/.bin:$HOME/.bin/lib:/usr/local/git/bin:/usr/local/sbin:$PATH

export LSCOLORS="Cxfxcxdxbxegedabagacad"
export LS_COLORS="di=1;32;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:"

export DISPLAY=:0.0
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export EDITOR='mate -w'
export SVN_EDITOR=$EDITOR

[[ -r $HOME/.bin/aliases ]] && source $HOME/.bin/aliases
[[ -r $HOME/.bin/aliases-git ]] && source $HOME/.bin/aliases-git
[[ -r $HOME/.bin/aliases-svn ]] && source $HOME/.bin/aliases-svn
[[ -r $HOME/.bin/work-secrets ]] && source $HOME/.bin/work-secrets
[[ -r $HOME/.bin/work ]] && source $HOME/.bin/work
[[ -r $HOME/.bin/personal ]] && source $HOME/.bin/personal

# from https://stackoverflow.com/questions/58861448
export WORDCHARS='*?[]~=&;!#$%^(){}<>'

setopt PROMPT_SUBST
PS1='%c%F{yellow}$(__git_ps1 "(%s)")%f %n%F{magenta}\$%f '
