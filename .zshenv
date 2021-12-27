export GPG_TTY=$(tty)

# Local default env vars
if [[ -f ~/.env ]]; then
  source ~/.env
fi

