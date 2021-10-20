#!/bin/sh

function resize_args {
  case "$direction" in
    "left")
      echo "left:-100:0";;
    "right")
      echo "right:100:0";;
    "up")
      echo "top:0:-100";;
    "down")
      echo "bottom:0:100";;
  esac
}

function opposite_args {
  case "$direction" in
    "left")
      echo "right:-100:0";;
    "right")
      echo "left:100:0";;
    "up")
      echo "bottom:0:-100";;
    "down")
      echo "top:0:100";;
  esac
}

function main {
  local direction
  direction="$1"
  /usr/local/bin/yabai -m window --resize "$(resize_args)"; /usr/local/bin/yabai -m window --resize "$(opposite_args)"
}

main "$@"
