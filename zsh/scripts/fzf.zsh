#! /bin/bash

if [ ! ~[junegunn/fzf]/bin/fzf ]; then
  ~[junegunn/fzf]/install --bin
fi

if [[ ! "$PATH" == *~[junegunn/fzf]/bin* ]]; then
  PATH="${PATH:+${PATH}:}~[junegunn/fzf]/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source ~[junegunn/fzf]/shell/completion.zsh 2> /dev/null

# Key bindings
# ------------
source ~[junegunn/fzf]/shell/key-bindings.zsh
