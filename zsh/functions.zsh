#! /bin/bash

function source-function() {
  local function

  function="$1"

  source "$ZSH/functions/$function.zsh"
}

source-function "completion"
source-function "custom"
source-function "key-bindings"
