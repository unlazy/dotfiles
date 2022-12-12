#!/bin/bash

firefox_path=$(ls -d ~/Library/Application\ Support/Firefox/Profiles/* | grep "release")

# Remove the installed Firefox style
mv "$firefox_path/chrome" "$firefox_path/chrome_pre_theme"
mv "$firefox_path/user.js" "$firefox_path/user_pre_theme.js"

# Install new style
cp "firefox/chrome" "$firefox_path/chrome"
cp "firefox/user.js" "$firefox_path/user.js"

# Restart Firefox
osascript -e 'quit app "Firefox"'
osascript -e 'tell application "Firefox" to activate'

# Remove temp files
rm "$firefox_path/user.js"
