
# migration .bash_profile
# source ~/.bash_profile

# Prompt Setting
PROMPT='%F{green}%c%f >>> '

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
