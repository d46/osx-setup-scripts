brew cask install iterm2
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
brew install autojump
brew tap caskroom/fonts
brew cask install font-hack-nerd-font
cp zshrc.conf ~/.zshrc
open -a iterm 
cp profile.plist ~/Library/Application\ Support/iTerm2/DynamicProfiles
