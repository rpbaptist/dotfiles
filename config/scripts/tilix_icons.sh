#!/bin/sh

symlink_tilix_icon() {
  icon_dir="/usr/share/icons/Papirus"
  size="$1"
  tilix_icon="$icon_dir/$size/apps/tilix.svg"

  sudo rm $tilix_icon
  sudo ln -fs "$icon_dir/$size/apps/utilities-terminal.svg" $tilix_icon
}

symlink_tilix_icon "16x16"
symlink_tilix_icon "22x22"
symlink_tilix_icon "24x24"
symlink_tilix_icon "32x32"
symlink_tilix_icon "48x48"
symlink_tilix_icon "64x64"
