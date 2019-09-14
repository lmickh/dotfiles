#!/usr/bin/env bash
if [ -z "$TMUX" ]; then
  tmux attach -t default || tmux new -s default
fi

for file in ~/.{bashrc,bash_prompt,profile,aliases}; do
	if [[ -r "$file" ]] && [[ -f "$file" ]]; then
		source "$file"
	fi
done

unset file

# Nix 
if [ -e /Users/lmickh/.nix-profile/etc/profile.d/nix.sh ]; then 
    . /Users/lmickh/.nix-profile/etc/profile.d/nix.sh; 
fi 
