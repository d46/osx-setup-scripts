# Apperance
echo "Faster dock show time"
defaults write com.apple.dock autohide-time-modifier -float 0.15;
echo "Enable autohide for dock"
defaults write com.apple.Dock autohide -bool TRUE; killall Dock
echo "Avoid creating .DS_Store files on network volumes"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
echo "Show the ~/Library folder"
chflags nohidden ~/Library
echo "Set ColumnView as Default"
defaults write com.apple.finder AlwaysOpenInColumnView True
# Set appearance
# Blue     : 1
# Graphite : 6
echo "Set Appearance to Graphite"
defaults write NSGlobalDomain AppleAquaColorVariant -int 6
echo "Set Highlight color to Red"
defaults write NSGlobalDomain AppleHighlightColor "1.000000 0.000000 0.315818"
echo "Change to dark theme"
defaults write NSGlobalDomain AppleInterfaceStyle -string "Dark"
echo "Hide Top Menu"
defaults write NSGlobalDomain _HIHideMenuBar -bool TRUE

for app in Finder Dock SystemUIServer System\ Preferences; do killall "$app" >/dev/null 2>&1; done

# For revert
# defaults delete com.apple.dock autohide-time-modifier;killall Dock
