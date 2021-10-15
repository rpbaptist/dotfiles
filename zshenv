#!/bin/sh

export SHELLCHECK_OPTS="-e SC1090"

export KERL_CONFIGURE_OPTIONS="--without-javac --with-ssl=/usr/local/Cellar/openssl@1.1/1.1.1l_1"

export ERL_AFLAGS="-kernel shell_history enabled -kernel shell_history_path '\"$HOME/.erlang-history\"' -kernel shell_history_file_bytes 1024000"

COMMON_PATHS="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
HOME_LOCAL_PATH="$HOME/.local/bin"

# export SUBLIME_PATH=/Applications/Sublime Text.app/Contents/SharedSupport/bin

# Postgres host
export PGHOST=localhost

export PATH="$HOME_LOCAL_PATH:$COMMON_PATHS:$PATH"

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

# unset QT_STYLE_OVERRIDE
# export QT_QPA_PLATFORMTHEME="qt5ct"
