#!/bin/bash

brew upgrade
brew cask update

brew uninstall git

brew install ctop
brew install dep
brew install dialog
brew install fish
brew install git
brew install git-flow
brew install git-lfs
brew install git-quick-stats
brew install git-standup
brew install go
brew install go-delve/delve/delve
brew install heroku
brew install hugo
brew install imagemagick --with-webp
brew install lua
brew install lynx
brew install mas
brew install nmap
brew install tree
brew install watchman
brew install woff2
brew install zsh zsh-completions

brew upgrade ctop
brew upgrade dep
brew upgrade dialog
brew upgrade fish
brew upgrade git
brew upgrade git-flow
brew upgrade git-lfs
brew upgrade git-quick-stats
brew upgrade git-standup
brew upgrade go
brew upgrade go-delve/delve/delve
brew upgrade imagemagick --with-webp
brew upgrade lua
brew upgrade lynx
brew upgrade mas
brew upgrade nmap
brew upgrade tree
brew upgrade watchman
brew upgrade woff2
brew upgrade zsh zsh-completions

brew unlink git
brew link git

brew uninstall python2
brew unlink python2
brew unlink python3
rm '/usr/local/bin/2to3'
brew install python3
brew link --overwrite python

brew uninstall node
brew unlink node
brew install node

brew unlink php56
brew install php71-xdebug
