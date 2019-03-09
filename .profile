#!/bin/sh

export GOPATH=$HOME/code/gopath
PATH="~/bin:/usr/local/opt/python/libexec/bin:$PATH:~/tools/ec2-api-tools/bin:$GOPATH/bin"

export EDITOR=vim

# Local default env vars
if [[ -f ~/.env ]]; then
  . ~/.env
fi
