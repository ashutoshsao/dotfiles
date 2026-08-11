#!/bin/bash

source "$CONFIG_DIR/colors.sh"

PERCENTAGE="$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)"
CHARGING="$(pmset -g batt | grep 'AC Power')"

if [ "$PERCENTAGE" = "" ]; then
  exit 0
fi

case "${PERCENTAGE}" in
9[0-9] | 100)
  ICON=$'\xef\x89\x80'
  ;;
[6-8][0-9])
  ICON=$'\xef\x89\x81'
  ;;
[3-5][0-9])
  ICON=$'\xef\x89\x82'
  ;;
[1-2][0-9])
  ICON=$'\xef\x89\x83'
  ;;
*)
  ICON=$'\xef\x89\x84'
  ;;
esac

if [ "$PERCENTAGE" -le 20 ]; then
  COLOR=$BATTERY_COLOR_CRITICAL
else
  COLOR=$BATTERY_COLOR_NORMAL
fi

if [ "$CHARGING" != "" ]; then
  COLOR=$BATTERY_COLOR_CHARGING
fi

sketchybar --set "$NAME" icon="$ICON" icon.color="$COLOR" label.drawing=off
