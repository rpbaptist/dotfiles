#!/bin/sh

function keycode {
  case "$space" in
    "1")
      echo "18";;
    "2")
      echo "19";;
    "3")
      echo "20";;
    "4")
      echo "21";;
    "prev")
      echo "33";;
    "next")
      echo "30";;
  esac
}

function main {
  local space
  space="$1"
  /usr/local/bin/yabai -m window --space "$space"
  osascript -e "tell app \"System Events\" to key code $(keycode) using command down"
}

main "$@"
