## Preparation

Install "Homebrew"
```
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Install "Homebrew Cask"
```
$ brew tap caskroom/cask
$ brew tap buo/cask-upgrade
```

Log In AppStore
- If you want to install app of app store released, you need to log in AppStore.

Create and copy-and-paste "Brewfile"
```
$ touch Brewfile
```

Install
```
$ brew bundle
```

## Tips

Create "Brewfile" automatic
- If you want to make brewfile that already installed environment.
```
$ brew bundle dump
```
