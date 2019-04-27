#!/usr/bin/env bash

# Load chruby
if [ -n "$BASH_VERSION" ] && [ -f /usr/local/share/chruby/chruby.sh ]; then
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

if [[ -d /etc/bash_completion.d/ ]]; then
	for file in /etc/bash_completion.d/* ; do
		source "$file"
	done
fi

if [ $(command -v aws_completer) ]; then
  complete -C aws_completer aws
fi

if hash kubectl 2>/dev/null; then
	source <(kubectl completion bash)
fi

unset file