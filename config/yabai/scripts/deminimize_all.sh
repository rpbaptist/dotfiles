#!/bin/sh

function main {
  current_space=$(/usr/local/bin/yabai -m query --spaces --space | /usr/local/bin/jq '.index')
  /usr/local/bin/yabai -m query --windows |
    /usr/local/bin/jq '.[] | select(.minimized == 1).id' |
    xargs -L1 -I{} sh -c ' {
      /usr/local/bin/yabai -m window $1 --space $2
      /usr/local/bin/yabai -m window $1 --deminimize
      } & ' sh {} $current_space
}

main "$@"
