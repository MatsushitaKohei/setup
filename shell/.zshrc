
# migration .bash_profile
# source ~/.bash_profile

# Prompt Setting
PROMPT='%F{green}%c%f >>> '

# ブランチ名を色付きで表示させるメソッド
function rprompt-git-current-branch {
  local branch_name st branch_status

  if [ ! -e  ".git" ]; then
    # gitで管理されていないディレクトリは何も返さない
    return
  fi
  branch_name=`git rev-parse --abbrev-ref HEAD 2> /dev/null`
  st=`git status 2> /dev/null`
  if [[ -n `echo "$st" | grep "^nothing to"` ]]; then
    # 全てcommitされてクリーンな状態
    branch_status="%F{green}"
  elif [[ -n `echo "$st" | grep "^Untracked files"` ]]; then
    # gitに管理されていないファイルがある状態
    branch_status="%F{red}?"
  elif [[ -n `echo "$st" | grep "^Changes not staged for commit"` ]]; then
    # git addされていないファイルがある状態
    branch_status="%F{red}+"
  elif [[ -n `echo "$st" | grep "^Changes to be committed"` ]]; then
    # git commitされていないファイルがある状態
    branch_status="%F{yellow}!"
  elif [[ -n `echo "$st" | grep "^rebase in progress"` ]]; then
    # コンフリクトが起こった状態
    echo "%F{red}!(no branch)"
    return
  else
    # 上記以外の状態の場合は青色で表示させる
    branch_status="%F{blue}"
  fi
  # ブランチ名を色付きで表示する
  echo "${branch_status}[$branch_name]"
}

# プロンプトが表示されるたびにプロンプト文字列を評価、置換する
setopt prompt_subst

# プロンプトの右側(RPROMPT)にメソッドの結果を表示させる
RPROMPT='`rprompt-git-current-branch`'

# Tab Info
function precmd() {
  echo -ne "\e]1;$PWD\a"
}

# Auto Completion
autoload -U compinit
compinit

# Android
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Flutter
export FLUTTER_HOME=$HOME/Library/Flutter/flutter
export PATH=$PATH:$FLUTTER_HOME/bin:$PATH

# JDK
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

# Fastlane
export PATH="$HOME/.fastlane/bin:$PATH"

# Ruby
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"

# Python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Git
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash

# SourceTree
alias st="stree"

# Xcode
alias xc="open *.xcworkspace"
alias xc-select-print="xcode-select --print-path; swift -version;"
alias xc-select="sudo xcode-select -switch /Applications/Xcode/Xcode.app/Contents/Developer; xc-select-print; swift -version;"
# iPhone Emulator
alias ip-emulator-record="xcrun simctl io booted recordVideo recoding.mov"

# AndroidStudio
alias as="studio ."

# InteliJ
alias ij="idea ."

# Visual Studio Code
alias vs="code ."
