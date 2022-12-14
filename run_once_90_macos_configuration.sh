#!/bin/bash

# ~/.macos — https://mths.be/macos

###############################################################################
# General UI/UX                                                               #
###############################################################################

# Disable automatic capitalization as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Disable smart dashes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Disable automatic period substitution as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

# Disable smart quotes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

#################################################
# Dock                                          #
#################################################

# Set the icon size of Dock items to 42 pixels
defaults write com.apple.dock tilesize -int 42

#################################################
# iTerm2                                        #
#################################################

# Advanced: Scroll wheel sends arrow keys when in alternate screen mode. (ie. scrolling in bat)
defaults write com.googlecode.iterm2 AlternateMouseScroll -int 1

# Profiles/Terminal: Scrollback Buffer (10000 lines)
/usr/libexec/PlistBuddy -c "set 'New Bookmarks':0:'Scrollback Lines' 10000" ~/Library/Preferences/com.googlecode.iterm2.plist

# Profile/Colors: Snazzy Theme
defaults read com.googlecode.iterm2 | grep -q "Snazzy" ||
  (curl -Ls https://raw.githubusercontent.com/sindresorhus/iterm2-snazzy/main/Snazzy.itermcolors > /tmp/Snazzy.itermcolors && open /tmp/Snazzy.itermcolors)

echo "Done. Note that some of these changes require a logout/restart to take effect."
