export DOTPATH=$HOME/dotfiles
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
# export PATH="/usr/local/opt/awscli@1/bin:$PATH"
export PATH="/usr/local/opt/awscli/bin:$PATH"
export PATH="/usr/local/opt/python@3.7/bin:$PATH"
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
export ANDROID_SDK=/Users/MMurphy/Library/Android/sdk
export PATH=/Users/MMurphy/Library/Android/sdk/platform-tools:$PATH

# USE `whoami` in terminal to get username
DEFAULT_USER=MMurphy

autoload -Uz add-zsh-hook

eval "$(rbenv init -)"

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Too many plugins slow down shell startup.
plugins=(
  git
  ruby
  rails
  gem
  brew
  docker
  mvn
  zsh-autosuggestions
  colored-man-pages
)

# ZSH Autosuggestions
# https://github.com/zsh-users/zsh-autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=3'

# Instructions found here for iterm tabs displaying working directory
# https://gist.github.com/phette23/5270658
DISABLE_AUTO_TITLE="true"
tab_title() {
  # sets the tab title to current dir
  echo -ne "\e]1;${PWD##*/}\a"
}
add-zsh-hook precmd tab_title

eval "$(hub alias -s)"

# Spaceship-Prompt (zsh theme)
source "$DOTPATH/zsh/theme_settings/.zsh_spaceship_prompt_settings"

# POWERLEVEL_9K (zsh theme)
# source "$DOTPATH/zsh/theme_settings/.zsh_powerlevel_9k_settings"

# Custom Aliases
source $DOTPATH/aliases/.aliases

# This video has good tips when it comes to hiding sensitive information
# https://www.youtube.com/watch?v=dQw4w9WgXcQ
source "$DOTPATH/zsh/.local"
source "$DOTPATH/zsh/.work"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

source /usr/local/opt/git-extras/share/git-extras/git-extras-completion.zsh

# to have zsh syntax highlighting run:
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
