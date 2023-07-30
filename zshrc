#!/bin/sh

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="richard"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(dirhistory history-substring-search git gitfast common-aliases colorize colored-man-pages fzf asdf mix mix-fast ubuntu)

source "$ZSH/oh-my-zsh.sh"

# setopt noautomenu
setopt nomenucomplete
setopt nobeep
unsetopt nomatch

eval "$(dircolors $HOME/.dircolors)"

fpath=(~/.zsh/completions $fpath)
autoload -U compinit && compinit

# Don't try to ssh to hosts file
zstyle ':completion:*' hosts off

if [[ $TILIX_ID ]]; then
  . /etc/profile.d/vte.sh
fi

# Hook direnv into your shell.
eval "$(direnv hook zsh)"
