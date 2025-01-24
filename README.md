# Dotfiles

## Setup
1. Run the following in your terminal to download [Homebrew](https://brew.sh/):
    ```
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    ```
2. Run `sh mac/install_packages.sh` to install brew formulas and casks.
3. Run `sh setup/install_env.sh` to finalize set up with symbolic links and a few other programs.
4. Add the following to your systems `.gitconfig`
   ```
   [include]
     path = ~/dev/dotfiles/.gitconfig
   ```
5. The setup will automatically install:
   - Spaceship theme for zsh
   - zsh-autosuggestions plugin
   - Create local/work configuration files

6. Customize the following files for your specific needs:
   - `zsh/.personal` for personal-specific configurations
   - `zsh/.work` for work-specific configurations

### Other things you'll find
#### `editors`
Back up your editor settings, because no one likes rebuilding that stuff

#### More to come...

### Kudos
- [Neil Mahoney](https://github.com/nmahoney/dotfiles) as his [dotfiles](https://github.com/nmahoney/dotfiles) served as a base template to build the initial version of my own dotfiles.
