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

znap eval starship 'starship init zsh --print-full-init'
znap prompt

zstyle ':autocomplete:*' fzf-completion yes
zstyle ':autocomplete:*' insert-unambiguous yes
zstyle ':autocomplete:*' widget-style menu-select

zstyle ':autocomplete:history-search:*' list-lines 16
zstyle ':autocomplete:history-incremental-search-*:*' list-lines 16  

znap source marlonrichert/zsh-edit
znap source marlonrichert/zsh-autocomplete

bindkey '\t' menu-select "$terminfo[kcbt]" reverse-menu-complete

ZSH_AUTOSUGGEST_STRATEGY=(history completion)
znap source zsh-users/zsh-autosuggestions

znap eval direnv "direnv hook zsh"
znap eval dircolors "dircolors $HOME/.dircolors"

source "$ZSH/plugins.zsh"
source "$ZSH/functions.zsh"
source "$ZSH/aliases.zsh"

# Don't try to ssh to hosts file
zstyle ':completion:*' hosts off
zstyle ':completion:*:*:git:*' script "$ZSH/scripts/git-completion.bash"

source "$HOME/.asdf/asdf.sh"
source "$HOME/.fzf.zsh"

zle -N up-line-or-search
up-line-or-search() {
  if [[ $LBUFFER == *$'\n'* ]] then
    zle up-line
  else
    fzf-history-widget
  fi
}

# Append local completions to fpath
fpath=(${ASDF_DIR}/completions $ZSH/completions $fpath)

znap fpath _glab      'glab      completion  -s zsh'
znap fpath _kubectl   'kubectl   completion  zsh'
znap fpath _remotectl 'remotectl completion  zsh'
znap fpath _starship  'starship  completions zsh'

skip_global_compinit=1
