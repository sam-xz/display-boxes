#!/bin/bash

# Install required packages
sudo apt update
sudo apt install -y curl

# Add the Google Chrome repository and signing key
curl -fsSL https://dl.google.com/linux/linux_signing_key.pub | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/google.gpg >/dev/null
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list

# Install Google Chrome
sudo apt update
sudo apt install -y google-chrome-stable

google-chrome