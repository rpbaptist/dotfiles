#!/bin/sh

# Prevent Ubuntu form performing useless overhead
skip_global_compinit=1

setopt nobeep
unsetopt nomatch

SAVEHIST=1000
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

znap eval starship 'starship init zsh --print-full-init'
znap prompt

znap install junegunn/fzf

zstyle ':autocomplete:*' fzf-completion yes
zstyle ':autocomplete:*' insert-unambiguous yes
zstyle ':autocomplete:*' widget-style menu-select

zstyle ':autocomplete:history-search:*' list-lines 16
zstyle ':autocomplete:history-incremental-search-*:*' list-lines 16  

znap source marlonrichert/zsh-edit
znap source marlonrichert/zsh-autocomplete

ZSH_AUTOSUGGEST_STRATEGY=(completion history)
znap source zsh-users/zsh-autosuggestions

bindkey '\t' menu-select "$terminfo[kcbt]" reverse-menu-complete
# bindkey -M menuselect '\r' .accept-line

znap eval dircolors "dircolors $HOME/.dircolors"
znap eval rtx "rtx activate zsh"

# Don't try to ssh to hosts file
zstyle ':completion:*' hosts off
zstyle ':completion:*:*:git:*' script "$ZSH/scripts/git-completion.bash"

source "$ZSH/custom.zsh"

fpath=($ZSH/completions $fpath)

znap fpath _glab      'glab      completion  -s zsh'
znap fpath _kubectl   'kubectl   completion  zsh'
znap fpath _remotectl 'remotectl completion  zsh'
znap fpath _rtx       'rtx       completion  zsh'
znap fpath _starship  'starship  completions zsh'

znap eval trapd00r/LS_COLORS 'dircolors -b LS_COLORS'
