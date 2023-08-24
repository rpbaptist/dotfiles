#! /bin/bash

alias resh=". ~/.zshrc"
alias zshenv="$EDITOR ~/.zshenv"
alias zshrc="$EDITOR ~/.zshrc"

# alias fd="fdfind"
# alias bat="batcat"

alias ls="ls --color=auto"
alias la='ls -lAFh'   #long list,show almost all,show type,human readable
alias lr='ls -tRFh'   #sorted by date,recursive,show type,human readable
alias lt='ls -ltFh'   #long list,sorted by date,show type,human readable
alias ll='ls -l'      #long list
alias ltr='ls -ltrFh'   #long list,sorted by date,show type,human readable
alias latr='ls -altrFh'   #long list,sorted by date,show type,human readable
alias ldot='ls -ld .*'
alias lS='ls -1FSsh'
alias lart='ls -1Fcart'
alias lrt='ls -1Fcrt'
alias lsr='ls -lARFh' #Recursive list of files and directories
alias lsn='ls -1'     #A column contains name of files and directories

alias ff='find . -type f -name'

alias sudo="sudo "
alias sl="subl"
alias scp="noglob scp"
alias lab="glab"
alias code="code --goto"

# I want to use gs for "git status"
alias ghostscript="/usr/bin/gs"
# alias toclip="xclip -sel clip <"

# alias todo="subl ~/Drive/Notes/my.tasks"

# alias dirsize="du -sch ./* | sort -h"

# alias git="lab"

alias ssh="kitty +kitten ssh"

# Save files, save lives
alias tp="trash-put"
alias rm='echo "Careful now!"; false'

alias dockerprune='docker rmi $(docker images -f "dangling=true" -q)'

# alias crontab='EDITOR=vi crontab'

# alias ansible-update="ANSIBLE_CONFIG=$HOME/.ansible/ansible.cfg \
#                       ansible-playbook $HOME/.ansible/main.yml \
#                       --inventory $HOME/.ansible/hosts \
#                       --vault-password-file $HOME/.ansible/vault-pass.txt"

alias qmkr="cd $HOME/code/qmk_firmware"
alias qmkm="subl -n -a $HOME/code/qmk_firmware $HOME/code/qmk_firmware/keyboards/crkbd/keymaps/rpbaptist/keymap.c"

alias arst="asdf"

# git

alias gs='git status'
alias gdh='git diff HEAD'
alias gdm='git diff master'
alias gdd='git diff develop'
alias gpu='git push -u'
alias gbm='git branch -m'

alias grho='git reset --hard @{upstream}'
alias gcf='git commit --fixup'

# Delete merged branches on master
alias gbdm='git branch --merged | egrep -v "(^\*|master|production)" | xargs -r -n 1 git branch -d'

# Change $TARGET_BRANCH to your targeted branch, e.g. change from `master` to `main` to delete branches squashed into `main`.
alias gbdms='git checkout -q master && git for-each-ref refs/heads/ "--format=%(refname:short)" | while read branch; do mergeBase=$(git merge-base master $branch) && [[ $(git cherry master $(git commit-tree $(git rev-parse $branch\^{tree}) -p $mergeBase -m _)) == "-"* ]] && git branch -D $branch; done'

alias gsync='git fetch && git pull && gbdm && gbdms && git remote prune origin'
alias gclean='git reset --hard && git clean -fd'

# mix

alias mf='mix format'
alias mt='mix test'
alias mtw='mix test.watch'
alias mpr='mix phx.routes'
alias mps='mix phx.server'

# aliases

alias bat="batcat"
alias fd="fdfind"

alias dot="cd $HOME/.dotfiles"
