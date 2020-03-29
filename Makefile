setup:
	# Brewfile
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
	brew tap caskroom/cask
	brew tap buo/cask-upgrade
	brew bundle
	# Gemfile
	rbenv install [TODO:Enter Latest Ruby Version]
	rbenv global [TODO:Enter Latest Ruby Version]
	gem install bundler
	bundle install
	# Mintfile
	mint bootstrap
  
setup-mac:
	# Change screenshot saving location
	defaults write com.apple.screencapture location ~/Downloads/; killall SystemUIServer;
  
setup-shell:
	# Setup .zshrc
	cp shell/.zshrc ~/
	# Setup hub command
	cp shell/hub ~/.config/
	# Setup chmod
	cp shell/git-ignore /usr/local/bin/
	chmod u+x /usr/local/bin/git-ignore
	cp shell/git-ignore-update /usr/local/bin/
	chmod u+x /usr/local/bin/git-ignore-update
	cp shell/git-delete-merged-branch /usr/local/bin/
	chmod u+x /usr/local/bin/git-delete-merged-branch
	cp shell/git-wip /usr/local/bin/
	chmod u+x /usr/local/bin/git-wip
	cp shell/git-wip-pr /usr/local/bin/
	chmod u+x /usr/local/bin/git-wip-pr
