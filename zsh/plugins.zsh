#! /bin/bash

function source-plugin() {
  local plugin

  plugin="$1"

  source "$ZSH/plugins/$plugin/$plugin.plugin.zsh"
}

source-plugin "common-aliases"
source-plugin "git"
source-plugin "ubuntu"
