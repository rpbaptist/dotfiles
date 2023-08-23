#!/bin/sh

HISTSIZE=10000
HISTFILE="$HOME/.zsh_history"
setopt appendhistory
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
setopt share_history          # share command history data

# setopt noautomenu
setopt nomenucomplete
setopt nobeep
unsetopt nomatch

# Hook direnv into your shell.
eval "$(direnv hook zsh)"

export ZSH="$HOME/.zsh"
# export ZSH_THEME="$ZSH/themes/richard.zsh-theme"
export ZSH_PLUGINS="$ZSH/plugins"

# source "$ZSH_THEME"
source "$ZSH/plugins.zsh"
source "$ZSH/functions.zsh"
source "$ZSH/aliases.zsh"

eval "$(dircolors $HOME/.dircolors)"

# Don't try to ssh to hosts file
zstyle ':completion:*' hosts off

source "$HOME/.asdf/asdf.sh"

# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
autoload -Uz compinit && compinit

eval "$(starship init zsh)"
