setup:
  # Homebrew
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  brew tap caskroom/cask
  brew tap buo/cask-upgrade
  brew bundle
  # Gem
  rbenv install 2.6.5
  rbenv global 2.6.5
  gem install bundler
  bundle install --path vendor/bundle
  
