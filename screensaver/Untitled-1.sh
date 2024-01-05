#!/bin/bash

# Check if Google Chrome is running
if pgrep chrome > /dev/null; then
    # Check if the URL is open in Google Chrome
    if wmctrl -l -x | grep -i "google-chrome.*https://dvdscreensaver.online" > /dev/null; then
        echo "The URL 'https://dvdscreensaver.online' is open in Google Chrome. Closing it..."
        wmctrl -c "https://dvdscreensaver.online"
        echo "The URL 'https://dvdscreensaver.online' has been closed."
    else
        echo "The URL 'https://dvdscreensaver.online' is not open in Google Chrome."
    fi
else
    echo "Google Chrome is not running."
fi