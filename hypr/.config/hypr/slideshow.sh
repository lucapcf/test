#!/bin/sh

WALLPAPER_DIR="$HOME/Cloud/Wallpapers/Wallpapers_blur/"
SLEEP_TIME=30

killall hyprpaper

hyprpaper &

while true; do
    for WALLPAPER in "$WALLPAPER_DIR"/*; do
      [ -f "$WALLPAPER" ] || continue  
      hyprctl hyprpaper reload ", contain:$WALLPAPER"

      sleep "$SLEEP_TIME"
    done
done

