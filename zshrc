#!/bin/sh

setopt nobeep

ZSH="$HOME/.zsh"
ZSH_CACHE_DIR="$HOME/.zsh_cache"

ZREPOS="$ZSH/repos"

source "$ZREPOS/znap/znap.zsh"

zstyle ':znap:*' repos-dir $ZREPOS

znap eval starship 'starship init zsh --print-full-init'
znap prompt

unsetopt nomatch

znap source ohmyzsh/ohmyzsh lib/{completion,key-bindings}
znap source ohmyzsh/ohmyzsh plugins/{fzf,dirhistory}

znap source zsh-users/zsh-history-substring-search

HISTSIZE=10000
HISTFILE="$HOME/.zsh_history"
setopt appendhistory
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
setopt share_history          # share command history data

# setopt noautomenu

# Hook direnv into your shell.
eval "$(direnv hook zsh)"

CASE_SENSITIVE=true

source "$ZSH/plugins.zsh"
source "$ZSH/functions.zsh"
source "$ZSH/aliases.zsh"

eval "$(dircolors $HOME/.dircolors)"

# Don't try to ssh to hosts file
zstyle ':completion:*' hosts off
zstyle ':completion:*:*:git:*' script "$ZSH/scripts/git-completion.bash"

source "$HOME/.asdf/asdf.sh"

# append completions to fpath
fpath=(${ASDF_DIR}/completions $ZSH/completions $fpath)
autoload -Uz compinit && compinit

skip_global_compinit=1
