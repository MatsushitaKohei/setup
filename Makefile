setup:
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  brew tap caskroom/cask
  brew tap buo/cask-upgrade
  brew bundle
