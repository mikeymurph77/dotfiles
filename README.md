# Dotfiles

A collection of dotfiles and scripts to set up a new Mac development environment with commonly used tools and configurations.

## Installation

1. Install Homebrew
Installs the Homebrew package manager for macOS.
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

2. Install Packages
Installs common development tools, terminal utilities, and GUI applications via Homebrew.
```bash
sh mac/install_packages.sh
```

3. Setup Environment
Creates necessary directories, configures environments, and sets up symbolic links for dotfiles.
```bash
sh setup/install_env.sh
```

## Configuration Files

The following files require manual creation and are git-ignored:

### Work/Personal Configurations
- `zsh/.work/config`: Work-specific environment variables and paths
- `zsh/.personal/config`: Personal environment variables and paths
- `aliases/.work`: Work-specific command aliases
- `aliases/.personal`: Personal command aliases

Template files are created during setup, but should be customized for your needs.

## Structure

### `/aliases`
Command aliases and shortcuts organized by category:
- Git operations
- Directory navigation
- Development tools
- Unix utilities

### `/editors`
Editor-specific configurations and settings:
- Editor setting preferences
- Theme configurations
- Syntax highlighting rules

### `/mac`
Contains Homebrew package definitions. All brew formulas and casks should be defined in `install_packages.sh`.

### `/setup`
Setup scripts for initializing the development environment:
- Directory structure creation
- Oh My Zsh installation
- Theme and plugin setup
- Symbolic link creation
- Programming language environment configuration

### `/zsh`
ZSH shell configurations:
- Theme settings
- Plugin configurations
- Shell customizations
- Work/Personal specific configurations

## Acknowledgments

Special thanks to [Neil Mahoney](https://github.com/nmahoney/dotfiles) whose dotfiles served as the initial inspiration for this project.
