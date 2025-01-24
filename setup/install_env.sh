#!/bin/bash

mkdir -p ~/dev/work
mkdir -p ~/dev/personal
mkdir -p ~/dev/dotfiles
mkdir -p ~/dev/dotfiles/zsh

# Only clone oh-my-zsh if it doesn't exist
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi

# Create necessary directories
mkdir -p "$HOME/.oh-my-zsh/custom/themes"
mkdir -p "$HOME/.oh-my-zsh/custom/plugins"

# Clone spaceship theme if it doesn't exist
if [ ! -d "$HOME/.oh-my-zsh/custom/themes/spaceship-prompt" ]; then
    git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$HOME/.oh-my-zsh/custom/themes/spaceship-prompt"
    ln -sf "$HOME/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme" "$HOME/.oh-my-zsh/custom/themes/spaceship.zsh-theme"
fi

# Clone zsh-autosuggestions if it doesn't exist
if [ ! -d "$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions" ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions.git "$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions"
fi

# Create symbolic links for configuration files
ln -sf "$PWD/zsh/.zshrc" "$HOME/.zshrc"
ln -sf "$PWD/zsh/.aliases" "$HOME/.aliases"

# Create work and personal config directories
mkdir -p ~/dev/dotfiles/zsh/.personal
mkdir -p ~/dev/dotfiles/zsh/.work

# Create template content for personal/work files if they don't exist
if [ ! -f ~/dev/dotfiles/zsh/.personal/config ]; then
    cat > ~/dev/dotfiles/zsh/.personal/config << EOL
# Add your personal-specific configurations here
# Example: Personal environment variables, paths, etc.
EOL
fi

if [ ! -f ~/dev/dotfiles/zsh/.work/config ]; then
    cat > ~/dev/dotfiles/zsh/.work/config << EOL
# Add your work-specific configurations here
# Example: Work environment variables, paths, etc.
EOL
fi

# Create symbolic links for Java installations if they exist
if [ -d "$(brew --prefix)/opt/openjdk@11" ]; then
    sudo ln -sfn $(brew --prefix)/opt/openjdk@11/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-11.jdk
fi

if [ -d "$(brew --prefix)/opt/openjdk@8" ]; then
    sudo ln -sfn $(brew --prefix)/opt/openjdk@8/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-8.jdk
fi

sh $HOME/dotfiles/setup/link_dotfiles.sh