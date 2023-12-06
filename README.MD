# Dotfiles Repository

This repository contains my personal dotfiles, including configurations for Zsh, Homebrew, and other tools I use.

## Setup

### Prerequisites

- [Homebrew](https://brew.sh/) - Package manager for macOS (if not already installed)
- [Zsh](https://www.zsh.org/) - Shell (if not the default shell)

### Installation

1. Clone the repository to your home directory:

    ```bash
    git clone <your-dotfiles-repo-url> ~/.dotfiles
    ```

2. Run the setup script:

    ```bash
    cd ~/.dotfiles
    ./setup.sh
    ```

    The setup script automates the installation of Zsh, Homebrew, copies the .zshrc file, and installs necessary packages listed in .zshrc using Homebrew.

## Customization

Feel free to modify the configurations to suit your preferences. The repository includes:

- `.zshrc`: Zsh configuration file
- `.p10k.zsh`: Powerlevel10k theme configuration
- `.oh-my-zsh`: Oh My Zsh configuration

## License

This repository is licensed under the [MIT License](LICENSE).
