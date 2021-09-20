#!/bin/sh

export SHELLCHECK_OPTS="-e SC1090"

export KERL_CONFIGURE_OPTIONS="--disable-debug --disable-silent-rules --without-javac --enable-shared-zlib --enable-dynamic-ssl-lib --enable-hipe --enable-sctp --enable-smp-support --enable-threads --enable-kernel-poll --with-ssl=/usr/lib/x86_64-linux-gnu/"

export ERL_AFLAGS="-kernel shell_history enabled -kernel shell_history_path '\"$HOME/.erlang-history\"' -kernel shell_history_file_bytes 1024000"

COMMON_PATHS="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
HOME_LOCAL_PATH="$HOME/.local/bin"

# Postgres host
export PGHOST=localhost

# export GOROOT="$HOME/.local/go"
export ASDF_PATH="$HOME/.asdf/shims"

export GAMES_PATH="/usr/games:/usr/local/games"
export PATH="$HOME_LOCAL_PATH:$COMMON_PATHS:$GAMES_PATH:$ASDF_PATH"

# Preferred editor for local and remote sessions
if [ -n "$SSH_CONNECTION" ]; then
  export EDITOR="vi"
else
  export EDITOR="subl -w"
fi

export NOTES_PATH="$HOME/Drive/Notes"

#GPG
GPG_TTY=$(tty)
export GPG_TTY

. ~/.local/env

# export FZF_BASE=/usr/bin/

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
  --color fg:#ebdbb2,bg:#1D2021,hl:#fabd2f,fg+:#ebdbb2,bg+:#3c3836,hl+:#fabd2f
  --color info:#83a598,prompt:#bdae93,spinner:#fabd2f,pointer:#83a598,marker:#fe8019,header:#665c54'

unset QT_STYLE_OVERRIDE
export QT_QPA_PLATFORMTHEME="qt5ct"

SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
