#!/bin/sh

function resize_args {
  case "$direction" in
    "left")
      echo "left:-$size:0";;
    "right")
      echo "right:$size:0";;
    "up")
      echo "top:0:-$size";;
    "down")
      echo "bottom:0:$size";;
  esac
}

function opposite_args {
  case "$direction" in
    "left")
      echo "right:-$size:0";;
    "right")
      echo "left:$size:0";;
    "up")
      echo "bottom:0:-$size";;
    "down")
      echo "top:0:$size";;
  esac
}

function main {
  local direction
  direction="$1"
  local size
  size="$2"
  /usr/local/bin/yabai -m window --resize "$(resize_args)"; /usr/local/bin/yabai -m window --resize "$(opposite_args)"
}

main "$@"
