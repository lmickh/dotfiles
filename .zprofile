#!/usr/bin/env zsh
if [[ -z "$TMUX" ]] && [[ "$TERM_PROGRAM" != "vscode" ]]; then
  tmux attach -t default || tmux new -s default
fi

if [ -x "$(command -v /opt/homebrew/bin/brew)" ] ; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi
