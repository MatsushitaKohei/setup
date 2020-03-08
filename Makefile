setup:
  # Brewfile
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  brew tap caskroom/cask
  brew tap buo/cask-upgrade
  brew bundle
  # Gemfile
  rbenv install 2.7.0
  rbenv global 2.7.0
  gem install bundler
  bundle install
  # Mintfile
  mint bootstrap
  
setup-mac:
  # Change screenshot saving location
  defaults write com.apple.screencapture location ~/Downloads/; killall SystemUIServer;
