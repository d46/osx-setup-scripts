read -p "TOKEN: " TOKEN
GISTID="\"856b40b3c956192fb4ba3917ea3d6c65\""
brew cask install visual-studio-code
code --install-extension Shan.code-settings-sync
brew tap tidwall/jj
brew install jj
cd ~/Library/Application\ Support/Code/User
code --enable-propesed-api
sleep 5

jj -i syncLocalSettings.json -v $TOKEN token -o syncLocalSettings.json

printf '{ "sync.autoDownload": true, "sync.gist": %s, "sync.lastUpload": "", "sync.autoUpload": false, "sync.lastDownload": "", "sync.forceDownload": true, "sync.host": "", "sync.pathPrefix": "", "sync.quietSync": false, "sync.askGistName": false, "sync.removeExtensions": true, "sync.syncExtensions": true }' "$GISTID" > settings.json

osascript -e 'quit app "Code"'
sleep 1
code
