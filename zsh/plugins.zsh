#! /bin/bash

function source-plugin() {
  local plugin

  plugin="$1"

  source "$ZSH/plugins/$plugin/$plugin.plugin.zsh"
}

source-plugin "common-aliases"
source-plugin "dirhistory"
source-plugin "fzf"
source-plugin "git"
source-plugin "gitfast"
source-plugin "history-substring-search"
source-plugin "mix"
source-plugin "mix-fast"
source-plugin "ubuntu"
