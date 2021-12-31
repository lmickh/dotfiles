export GPG_TTY=$(tty)

# Local default env vars
if [[ -f ~/.env ]]; then
  source ~/.env
fi

# added by Nix installer
if [ -e /home/lmickh/.nix-profile/etc/profile.d/nix.sh ]; then 
  . /home/lmickh/.nix-profile/etc/profile.d/nix.sh 
fi
