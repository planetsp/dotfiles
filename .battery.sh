#!/bin/bash

# Battery status script for i3blocks
# Save this script as ~/.config/i3blocks/scripts/battery.sh
# Make it executable: chmod +x ~/.config/i3blocks/scripts/battery.sh

# Get battery information
BATTERY_PATH="/sys/class/power_supply/BAT0"

# Check if the battery exists
if [ ! -d "$BATTERY_PATH" ]; then
    # Try alternative battery path
    BATTERY_PATH="/sys/class/power_supply/BAT1"

    if [ ! -d "$BATTERY_PATH" ]; then
        echo "No battery found"
        echo "No battery found"
        echo "#FF5555"
        exit 1
    fi
fi

# Get battery status
STATUS=$(cat "$BATTERY_PATH/status")
CAPACITY=$(cat "$BATTERY_PATH/capacity")

# Set icon based on battery level and charging status
if [ "$STATUS" = "Charging" ]; then
    ICON="⚡"
else
    if [ $CAPACITY -ge 90 ]; then
        ICON="󰁹"  # Full battery
    elif [ $CAPACITY -ge 75 ]; then
        ICON="󰂀"  # 3/4 battery
    elif [ $CAPACITY -ge 50 ]; then
        ICON="󰁿"  # 1/2 battery
    elif [ $CAPACITY -ge 25 ]; then
        ICON="󰁼"  # 1/4 battery
    else
        ICON="󰁺"  # Low battery
    fi
fi

# Set color based on battery level
if [ $CAPACITY -le 10 ]; then
    COLOR="#FF0000"  # Red for very low
elif [ $CAPACITY -le 25 ]; then
    COLOR="#FFAE00"  # Orange for low
elif [ $CAPACITY -le 50 ]; then
    COLOR="#FFF600"  # Yellow for medium
else
    COLOR="#00FF00"  # Green for high
fi

# Check if battery is charging
if [ "$STATUS" = "Charging" ]; then
    COLOR="#00FFFF"  # Cyan for charging
fi

# Output for i3blocks:
# First line is full text, second line is short text, third line is color
echo "$ICON $CAPACITY%"
echo "$ICON $CAPACITY%"
echo "$COLOR"
