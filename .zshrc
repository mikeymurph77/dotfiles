export DOTPATH=$HOME/dotfiles
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/opt/awscli/bin:$PATH"

# USE `whoami` in terminal to get username
DEFAULT_USER=$(whoami)

autoload -Uz add-zsh-hook

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Too many plugins slow down shell startup.
plugins=(
  git
  alias-finder
  brew
  docker
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

# Spaceship-Prompt (zsh theme)
source "$DOTPATH/zsh/theme_settings/.zsh_spaceship_prompt_settings"

# Custom Aliases
source $DOTPATH/aliases/.aliases

# This video has good tips when it comes to hiding sensitive information
# https://www.youtube.com/watch?v=dQw4w9WgXcQ
source "$HOME/dev/dotfiles/zsh/.personal/config"
source "$HOME/dev/dotfiles/zsh/.work/config"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

# to have zsh syntax highlighting run:
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
