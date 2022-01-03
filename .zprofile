#!/usr/bin/env zsh

if [ -x "$(command -v /opt/homebrew/bin/brew)" ] ; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

path=(
	$HOME/bin
	/usr/local/{bin,sbin}
	$PATH
	/usr/local/go/bin
	$GOPATH/bin
	$(python3 -c 'import site; print(site.USER_BASE)')/bin
	/usr/share/code/bin
)

# added by Nix installer
if [ -e /home/lmickh/.nix-profile/etc/profile.d/nix.sh ]; then 
  . /home/lmickh/.nix-profile/etc/profile.d/nix.sh 
fi

