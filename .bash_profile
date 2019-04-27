#!/usr/bin/env bash
if [ -z "$TMUX" ]; then
  tmux attach -t default || tmux new -s default
fi

for file in ~/.{bashrc,bash_prompt,aliases}; do
	if [[ -r "$file" ]] && [[ -f "$file" ]]; then
		source "$file"
	fi
done

unset file