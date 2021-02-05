#!/bin/sh

export SHELLCHECK_OPTS="-e SC1090"

COMMON_PATHS="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
HOME_LOCAL_PATH="$HOME/.local/bin"
YARN_PATH="$HOME/.yarn-config/global/node_modules/.bin"

# Postgres host
export PGHOST=localhost

export CABAL_PATH="$HOME/.cabal/bin"
export GOROOT="$HOME/.local/go"
export GOPATH="$GOROOT/bin"

NPM_PACKAGES="$HOME/.npm-packages/bin"
GAMES_PATH="/usr/games:/usr/local/games"
export PATH="$HOME_LOCAL_PATH:$COMMON_PATHS:$GAMES_PATH:$GOPATH:$YARN_PATH:$NPM_PACKAGES:$CABAL_PATH"

# Preferred editor for local and remote sessions
if [ -n "$SSH_CONNECTION" ]; then
  export EDITOR="vi"
else
  export EDITOR="subl -w"
fi

export RTV_EDITOR="vi"

#GPG
GPG_TTY=$(tty)
export GPG_TTY

. ~/.local/env

# export FZF_BASE=/usr/bin/

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
  --color fg:#ebdbb2,bg:#1D2021,hl:#fabd2f,fg+:#ebdbb2,bg+:#3c3836,hl+:#fabd2f
  --color info:#83a598,prompt:#bdae93,spinner:#fabd2f,pointer:#83a598,marker:#fe8019,header:#665c54'

export QT_QPA_PLATFORMTHEME="gtk2"
# export QT_STYLE_OVERRIDE="gtk2"
