brew update

# terminal applications
brew install \
  awscli \
  gh \
  git \
  git-extras \
  git-friendly \
  gitin \
  heroku \
  itermocil \
  neofetch \
  node \
  postgresql \
  ruby-build \
  sqlite \
  the_silver_searcher \
  tmux \
  tree \
  vim \
  zsh-syntax-highlighting

# GUI applications
brew cask
brew tap homebrew/cask-versions

brew cask install \
  firefox \
  intellij-idea \
  iterm2-nightly \
  sublime-text \
  visual-studio-code-insiders \
  github

brew cask install \
  alfred \
  bartender \
  caffeine \
  dropbox \
  google-chrome \
  notion \
  postman \
  rectangle \
  rocket \
  scroll-reverser \
  sequel-pro \
  slack \
  spotify

# fonts
brew tap homebrew/cask-fonts
brew cask install homebrew/cask-fonts/font-source-code-pro
