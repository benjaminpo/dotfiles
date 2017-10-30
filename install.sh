#!/bin/bash

echo Developer Workspace

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

pip install powerline-status --user
git clone https://github.com/Lokaltog/powerline-fonts.git
cd powerline-fonts/
./install.sh

curl -O  http://pear.php.net/go-pear.phar
php -d detect_unicode=0 go-pear.phar
rm go-pear.phar

# Oh My ZSH
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

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
brew install imagemagick --with-webp
brew install lua
brew install lynx
brew install mas
brew install nmap
brew install tree
brew install watchman
brew install woff2

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

brew link git
brew link python3

brew unlink php56 && brew install php71-xdebug

curl -o- -L https://yarnpkg.com/install.sh | bash

brew cask install aerial
brew cask install android-studio
brew cask install atom
brew cask install basecamp
brew cask install bitbar
brew cask install chrome-cli
brew cask install chrome-devtools
brew cask install chrome-remote-desktop-host
brew cask install daemon-tools
brew cask install dbeaver-community
brew cask install diffmerge
brew cask install docker
brew cask install dropbox
brew cask install evernote
brew cask install expandrive
brew cask install filezilla
brew cask install firefox
brew cask install franz
brew cask install google-chrome
brew cask install google-nik-collection
brew cask install google-web-designer
brew cask install handbrake
brew cask install imageoptim
brew cask install iterm2
brew cask install java
brew cask install kdiff3
brew cask install keepingyouawake
brew cask install kindle
brew cask install libreoffice
brew cask install line
brew cask install multifirefox
brew cask install p4merge
brew cask install phocus
brew cask install phpstorm
brew cask install postman
# brew cask install qq
brew cask install screaming-frog-seo-spider
brew cask install sequel-pro
brew cask install skype
brew cask install slack
brew cask install sourcetree
brew cask install spotify
brew cask install textmate
brew cask install unity
brew cask install viber
brew cask install virtualbox
brew cask install visual-studio-code
brew cask install vlc
brew cask install whatsapp

# mas install 1278508951  # Trello (2.9.9)
mas install 425424353   # The Unarchiver (3.11.3)
# mas install 836500024   # WeChat (2.3.3)
# mas install 717545828   # iZip Unarchiver (3.0.0)
# mas install 981420053   # Media Player (2.1.0)
# mas install 540348655   # Monosnap (3.4.4)
# mas install 747648890    # Telegram (3.5.3)

apm install atom-beautify
apm install atom-ide-ui
apm install atom-runner
apm install blame
apm install busy-signal
apm install color-tabs
apm install editorconfig
apm install figlet
apm install file-icons
apm install git-control
apm install git-diff
apm install git-log
apm install git-plus
apm install git-time-machine
apm install go-plus
apm install highlight-selected
apm install intentions
apm install linter
apm install linter-ui-default
apm install merge-conflicts
apm install minimap
apm install php-integrator-base
apm install pigments
apm install project-manager
apm install qolor
apm install react-es6-snippets
apm install react-redux-snippets
apm install react-snippets
apm install refactor
apm install todo-show
apm install trailing-spaces
apm install zen

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

go get -u github.com/golang/protobuf/{proto,protoc-gen-go}
go get github.com/haya14busa/goplay/cmd/goplay
go get github.com/tj/node-prune/cmd/node-prune
go get google.golang.org/grpc

yarn global add @angular/cli
yarn global add coffeescript
yarn global add create-react-app
yarn global add create-react-native-app
yarn global add ember-cli
yarn global add eslint
yarn global add express-generator
yarn global add grunt-cli
yarn global add gulp-cli
yarn global add jshint
yarn global add newman
yarn global add polymer-cli
yarn global add prettier
yarn global add pug-cli
yarn global add react-native-cli
yarn global add tldr
yarn global add tslint
yarn global add typescript
yarn global add vue-cli
yarn global add webpack

#vscode
code --install-extension alefragnani.Bookmarks
code --install-extension alefragnani.project-manager
code --install-extension bajdzis.vscode-database
code --install-extension bradgashler.htmltagwrap
code --install-extension BriteSnow.vscode-toggle-quotes
code --install-extension christian-kohler.npm-intellisense
code --install-extension christian-kohler.path-intellisense
code --install-extension CoenraadS.bracket-pair-colorizer
code --install-extension DavidAnson.vscode-markdownlint
code --install-extension dbaeumer.jshint
code --install-extension dbaeumer.vscode-eslint
code --install-extension donjayamanne.bower
code --install-extension donjayamanne.githistory
code --install-extension donjayamanne.jquerysnippets
code --install-extension eamodio.gitlens
code --install-extension EditorConfig.EditorConfig
code --install-extension eg2.tslint
code --install-extension eg2.vscode-npm-script
code --install-extension emeraldwalk.RunOnSave
code --install-extension eridem.vscode-postman
code --install-extension esbenp.prettier-vscode
code --install-extension fabiospampinato.vscode-optimize-images
code --install-extension felipecaputo.git-project-manager
code --install-extension felixfbecker.php-debug
code --install-extension hnw.vscode-auto-open-markdown-preview
code --install-extension HookyQR.beautify
code --install-extension justusadam.language-haskell
code --install-extension kisstkondoros.vscode-gutter-preview
code --install-extension lukapetrovic.image-resizer
code --install-extension lukehoban.Go
code --install-extension minhthai.vscode-todo-parser
code --install-extension mkaufman.HTMLHint
code --install-extension ms-mssql.mssql
code --install-extension ms-python.python
code --install-extension ms-vscode.atom-keybindings
code --install-extension ms-vscode.node-debug2
code --install-extension ms-vscode.PowerShell
code --install-extension ms-vsts.team
code --install-extension msjsdiag.debugger-for-chrome
code --install-extension PeterJausovec.vscode-docker
code --install-extension QassimFarid.ejs-language-support
code --install-extension rebornix.Ruby
code --install-extension rid9.datetime
code --install-extension robertohuertasm.vscode-icons
code --install-extension Shan.code-settings-sync
code --install-extension sivarajanraju.vs-code-office-ui-fabric
code --install-extension steoates.autoimport
code --install-extension UCL.haskelly
code --install-extension vsmobile.vscode-react-native
code --install-extension waderyan.gitblame
code --install-extension wmaurer.change-case
code --install-extension Zignd.html-css-class-completion

echo 'Cleanup Homebrew formulas'
brew prune
brew cleanup
# cleanup
brew cleanup --force
brew cask cleanup
rm -f -r /Library/Caches/Homebrew/*

# reload
source ~/.bash_profile

echo '--> Refreshing terminal'
exec $SHELL --login
