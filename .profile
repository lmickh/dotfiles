#!/usr/bin/env bash

# Load brew if exists
if [[ -f /opt/homebrew/bin/brew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

export GOPATH=$HOME/code/gopath
PATH="$HOME/bin:/usr/local/opt/python/libexec/bin:$PATH:$HOME/tools/ec2-api-tools/bin:/usr/local/go/bin:$GOPATH/bin:$(python3 -c 'import site; print(site.USER_BASE)')/bin:/usr/share/code/bin"

export EDITOR=vim
export HISTSIZE=5000
export PROMPT_DIRTRIM=3

# Local default env vars
if [[ -f ~/.env ]]; then
  source ~/.env
fi
