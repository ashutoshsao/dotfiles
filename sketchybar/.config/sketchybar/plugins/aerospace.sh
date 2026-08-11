#!/usr/bin/env bash

source "$CONFIG_DIR/colors.sh"

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
  sketchybar --set "$NAME" background.drawing=on \
    background.color=$SPACE_ACTIVE_BG_COLOR \
    icon.color=$SPACE_ACTIVE_COLOR
else
  sketchybar --set "$NAME" background.drawing=off \
    icon.color=$SPACE_INACTIVE_COLOR
fi
