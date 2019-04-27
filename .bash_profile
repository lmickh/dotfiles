#!/bin/bash
if [ -z "$TMUX" ]; then
  tmux attach -t default || tmux new -s default
fi

if [ -r ~/.profile ]; then
  source ~/.profile
fi

if [ -r ~/.bashrc ]; then
  source ~/.bashrc
fi
