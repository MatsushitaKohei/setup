## Preparation

### Log In AppStore
If you want to install app of app store released, you need to log in AppStore.

### Download to local of Mac
[Download](https://github.com/MatsushitaKohei/setup/archive/master.zip)

### Setup ruby version
Describe the latest Ruby version in Makefile.

### Setup github token
Create hub file `~/.config/hub`.

```
github.com:
- user: [TODO:Enter GitHub User Name]
  oauth_token: [TODO:Enter GitHub Token]
  protocol: https
```

### Install
```
$ make
```

## Links

- [Homebrew](https://brew.sh/index_ja)

## Tips

Create "Brewfile" automatic
- If you want to make brewfile that already installed environment.
```
$ brew bundle dump
```
