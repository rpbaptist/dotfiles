#!/bin/sh

setopt nobeep
unsetopt nomatch

HISTSIZE=10000
HISTFILE="$HOME/.zsh_history"
setopt appendhistory
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
setopt share_history          # share command history data

ZSH="$HOME/.zsh"
ZSH_CACHE_DIR="$HOME/.zsh_cache"

ZREPOS="$ZSH/repos"

source "$ZREPOS/znap/znap.zsh"

zstyle ':znap:*' repos-dir $ZREPOS
zstyle ':znap:*:<glob pattern>' git-maintenance off

znap eval starship 'starship init zsh --print-full-init'
znap prompt

znap source marlonrichert/zsh-edit

# # all Tab widgets
zstyle ':autocomplete:tab' insert-unambiguous yes
zstyle ':autocomplete:*complete*:*' insert-unambiguous yes
# # all history widgets
zstyle ':autocomplete:*history*:*' insert-unambiguous yes
# # ^S
zstyle ':autocomplete:menu-search:*' insert-unambiguous yes

zstyle ':autocomplete:*' fzf-completion yes
zstyle ':autocomplete:*' widget-style menu-select

znap source marlonrichert/zsh-autocomplete

bindkey '\t' menu-select "$terminfo[kcbt]" reverse-menu-complete
bindkey -M menuselect '\r' .accept-line

# bindkey '\t' menu-select "$terminfo[kcbt]" menu-select
# bindkey -M menuselect '\t' menu-complete "$terminfo[kcbt]" reverse-menu-complete

# setopt noautomenu

# Hook direnv into your shell.
eval "$(direnv hook zsh)"

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
