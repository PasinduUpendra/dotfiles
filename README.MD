# Dotfiles Repository

This repository contains my personal dotfiles, including configurations for Zsh, Homebrew, and other tools I use.

## Setup

### Prerequisites

- [Homebrew](https://brew.sh/) - Package manager for macOS (if not already installed)
- [Zsh](https://www.zsh.org/) - Shell (if not the default shell)

### Installation

1. Clone the repository to your home directory:

    ```bash
    git clone <https://github.com/PasinduUpendra/dotfiles/tree/main> ~/dotfiles
    ```

2. Run the setup script:

    ```bash
    cd ~/dotfiles
    ./setup.sh
    ```

    The setup script automates the installation of Zsh, Homebrew, copies the .zshrc file, and installs necessary packages listed in .zshrc using Homebrew.

## Customization

Feel free to modify the configurations to suit your preferences. The repository includes:

- `.zshrc`: Zsh configuration file
- `.p10k.zsh`: Powerlevel10k theme configuration



## Zsh Configuration (.zshrc)
The `.zshrc` file is a configuration file for the Zsh shell, containing settings, environment variables, and command aliases to customize the behavior of your terminal.

### Contents

The `.zshrc` file includes various configurations and commands, such as:

- Checking for and loading Powerlevel10k instant prompt and iTerm shell integration.
- Configuring Homebrew-related settings, including loading plugins, completion features, and themes.
- Defining a list of Zsh plugins (`git`, `autojump`, `zoxide`, `z`, `gh`, `nvm`, `npm`, `macos`).
- Customizing PATH variables for various tools and package managers (`nvm`, `pyenv`, `yarn`, `Spicetify`, `RVM`, `pnpm`, `Sublime Text`, etc.).
- Environment configuration for development tools like Node.js, Python, RVM, package managers, and text editors.

## License

This repository is licensed under the [MIT License](LICENSE).
