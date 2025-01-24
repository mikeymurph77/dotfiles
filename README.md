# Dotfiles

A collection of dotfiles and scripts to set up a new Mac development environment with commonly used tools and configurations.

## Features

- Automated installation of common development tools via Homebrew
- ZSH configuration with Spaceship theme and useful plugins
- Git configuration with separate work/personal profiles
- Custom aliases for improved productivity
- Editor settings backup
- Separate work and personal configuration support

## Installation

### 1. Install Homebrew

First, install [Homebrew](https://brew.sh/) by running:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

### 2. Install Packages

Run the following command to install necessary brew formulas and applications:

```bash
sh mac/install_packages.sh
```

This will install:
- Development tools (git, nvm, Java 8/11, etc.)
- CLI utilities (awscli, tree, ag, etc.)
- GUI applications (Warp, Arc, Cursor, Raycast, etc.)

### 3. Setup Environment

Run the environment setup script:

```bash
sh setup/install_env.sh
```

This script will:
- Set up directory structure
- Install Oh My Zsh
- Install Spaceship theme
- Install ZSH plugins
- Create symbolic links
- Set up Java environment

## Configuration Files

The following files are ignored by git and need to be created manually:

### Work/Personal Configurations
- `zsh/.work/config`: Work-specific environment variables, paths, and configurations
- `zsh/.personal/config`: Personal environment variables, paths, and configurations
- `aliases/.work`: Work-specific command aliases and shortcuts
- `aliases/.personal`: Personal command aliases and shortcuts

These files are automatically created with template content during setup, but you should customize them based on your needs.

## Directory Structure

### `editors/`
Contains backup configurations for various editors. Currently includes:
- Sublime Text 3 settings

### `aliases/`
Collection of useful aliases:
- Git shortcuts
- Directory navigation
- Common development commands
- Unix utilities

### `zsh/`
ZSH-specific configurations:
- Theme settings
- Plugin configurations
- Shell customizations

## Acknowledgments

Special thanks to [Neil Mahoney](https://github.com/nmahoney/dotfiles) whose dotfiles served as the initial inspiration for this project.
