#! /bin/bash

# Copied over from omz
function source-plugin() {
  local plugin

  plugin="$1"

  source "$ZSH/plugins/$plugin/$plugin.plugin.zsh"
}

source-plugin "git"
source-plugin "ubuntu"

source "$ZSH/title.zsh"
source "$ZSH/functions.zsh"
source "$ZSH/aliases.zsh"
