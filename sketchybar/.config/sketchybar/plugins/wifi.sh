#!/bin/sh

source "$CONFIG_DIR/colors.sh"

WIFI_DEVICE=$(networksetup -listallhardwareports | awk '/Wi-Fi/{getline; print $2}')
SSID=$(ipconfig getsummary "$WIFI_DEVICE" 2>/dev/null | awk -F ' SSID : ' '/ SSID : / {print $2}')

if [ -z "$SSID" ]; then
  sketchybar --set "$NAME" icon="󰤮" icon.color="$WIFI_COLOR" label="Off" label.color="$WIFI_COLOR"
  exit 0
fi

sketchybar --set "$NAME" icon="󰖩" icon.color="$WIFI_COLOR" label="Connected" label.color="$WIFI_COLOR"