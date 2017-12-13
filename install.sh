#!/bin/bash

# Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade
brew install python3

# required password!? than coffee time
sudo sysctl -w kern.maxfiles=5242880
sudo sysctl -w kern.maxfilesperproc=524288
sudo xcodebuild -license accept
brew install brew-cask


echo 'export PATH=$HOME/local/bin:$PATH' >> ~/.bashrc
. ~/.bashrc
mkdir ~/local
mkdir ~/node-latest-install
cd ~/node-latest-install
curl http://nodejs.org/dist/node-latest.tar.gz | tar xz --strip-components=1
./configure --prefix=~/local
make install # ok, fine, this step probably takes more than 30 seconds...
curl https://www.npmjs.org/install.sh | sh


brew cask install mamp
brew cask install pritunl
brew cask install teamviewer
brew cask install virtualbox
brew cask install zoomus
# Cloud cli
pip install awscli --upgrade --user
# brew install azure-cli
# curl https://sdk.cloud.google.com | bash
# sudo pip install aliyuncli

# pip install powerline-status --user
# git clone https://github.com/Lokaltog/powerline-fonts.git
# cd powerline-fonts/
# ./install.sh

curl -O  http://pear.php.net/go-pear.phar
php -d detect_unicode=0 go-pear.phar
rm go-pear.phar

# Oh My ZSH
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# yarn
curl -o- -L https://yarnpkg.com/install.sh | bash


# mas install 1278508951  # Trello (2.9.9)
mas install 425424353   # The Unarchiver (3.11.3)
# mas install 836500024   # WeChat (2.3.3)
# mas install 717545828   # iZip Unarchiver (3.0.0)
# mas install 981420053   # Media Player (2.1.0)
# mas install 540348655   # Monosnap (3.4.4)
# mas install 747648890    # Telegram (3.5.3)

brew unlink php56 && brew install php71-xdebug

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv composer.phar /usr/local/bin/composer

composer global require "laravel/installer"

gem update --system
gem install compass
gem install sass

./bin/atom.sh
./bin/brew-cask.sh
./bin/brew.sh
./bin/git.sh
./bin/golang.sh
./bin/plist-import.sh
./bin/vscode.sh
./bin/yarn.sh

echo 'Cleanup'
brew prune
brew cleanup
# cleanup
brew cleanup --force
brew cask cleanup
rm -f -r /Library/Caches/Homebrew/*

# reload
source ~/.bash_profile

echo 'Refreshing terminal'
exec $SHELL --login
