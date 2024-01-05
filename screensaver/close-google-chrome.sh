#!/bin/bash
rm -f "/home/tv/reopen"
# Check if Google Chrome is running and close

if pgrep chrome > /dev/null; then
    echo "Google Chrome is already running. Closing it..."
    pkill chrome
    echo "Google Chrome has been closed."
    touch /home/tv/reopen
    echo "Touch file 'reopen' created."
else
    echo "Google Chrome is not running."
    exit 0
fi