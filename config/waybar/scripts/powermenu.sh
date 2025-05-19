#!/bin/bash

# Get screen dimensions
WAYBAR_HEIGHT=30  # Adjust if needed



# Show wofi menu at the calculated position
CHOICE=$(echo -e " Lock\n⏻ Shutdown\n Restart\n⏾ Suspend\n🚪 Logout" | wofi --dmenu --width=100 --height=300 --yoffset=10 --xoffset=3220 --hide_search=true)

case $CHOICE in
    " Lock") swaylock ;;
    "⏻ Shutdown") systemctl poweroff ;;
    " Restart") systemctl reboot ;;
    "⏾ Suspend") systemctl suspend ;;
    "🚪 Logout") hyprctl dispatch exit ;;
esac
