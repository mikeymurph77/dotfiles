mkdir ~/dev

git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
git clone https://github.com/rbenv/rbenv.git ~/.rbenv

sh $HOME/.dotfiles/setup/link_dotfiles.sh

# make zsh the default shell
chsh -s /usr/local/bin/zsh
