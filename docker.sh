cd ~/Downloads
curl https://download.docker.com/mac/stable/Docker.dmg -o Docker.dmg
hdiutil attach Docker.dmg
sudo rm -rf /Applications/Docker.app
sudo cp -R /Volumes/Docker/Docker.app /Applications
