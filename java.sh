echo "Installing Java Version Manager"
curl -sL https://github.com/shyiko/jabba/raw/master/install.sh | bash && . ~/.jabba/jabba.sh
echo "Installing java 1.8.x"
jabba install 1.8
echo "Installing Maven"
brew install maven
echo "Installing Gradle"
brew install gradle
