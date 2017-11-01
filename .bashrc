#!/bin/bash

# Load chruby
if [ -n "$BASH_VERSION" ] || [ -n "$ZSH_VERSION" ]; then
  source /usr/local/share/chruby/chruby.sh
  source /usr/local/share/chruby/auto.sh
fi

if [ -f /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc ]; then
  . /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc
  . /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc
fi

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

if [ $(command -v aws_completer) ]; then
  complete -C aws_completer aws
fi

# Git branch in prompt.
parse_git_branch() {

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

alias kc='kubectl'
alias ls='ls -G'
alias ll='ls -l'
alias grep='grep --color=auto'

alias dotfiles='/usr/bin/env git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Docker crap
alias dockerclean='docker rm $(docker ps -a -q) && docker rmi $(docker images -q)'
alias dc='docker-compose'

alias flushdns='sudo killall -HUP mDNSResponder;echo "flushed"'
