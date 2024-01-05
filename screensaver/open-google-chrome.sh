#!/bin/bash

# Check if the reopen file exists
if [ -f "/home/tv/reopen" ]; then
    echo "Reopen file found. Opening Google Chrome in full screen..."
    google-chrome --start-fullscreen --restore-last-session &
    
else
    echo "Chrome was not open last night. Google Chrome will not be reopened."
fi