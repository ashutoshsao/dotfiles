#!/usr/bin/env bash

source "$CONFIG_DIR/colors.sh"

MODE=$(aerospace list-modes --current)

if [ "$MODE" = "main" ]; then
  sketchybar --set aerospace_mode drawing=off
else
  LABEL=$(echo "$MODE" | tr '[:lower:]' '[:upper:]')
  sketchybar --set aerospace_mode drawing=on \
    label="$LABEL" \
    icon="󰌌"
fi
