#!/bin/bash

# Install Homebrew (if not already installed)
if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install Zsh (if not the default shell)
if [[ ! "$SHELL" == *zsh ]]; then
    echo "Installing Zsh..."
    brew install zsh
    # Add Zsh to the list of approved shells
    sudo sh -c 'echo /usr/local/bin/zsh >> /etc/shells'
    # Change default shell to Zsh
    chsh -s /usr/local/bin/zsh
fi

# Clone or update dotfiles repository
DOTFILES_DIR="$HOME/.dotfiles"
if [ ! -d "$DOTFILES_DIR" ]; then
    echo "Cloning dotfiles repository..."
    git clone <your-dotfiles-repo-url> "$DOTFILES_DIR"
else
    echo "Updating existing dotfiles repository..."
    cd "$DOTFILES_DIR" || exit
    git pull origin master
fi

# Copy .zshrc from dotfiles to home directory
ZSHRC_FILE="$DOTFILES_DIR/.zshrc"
if [ -f "$ZSHRC_FILE" ]; then
    echo "Copying .zshrc file to home directory..."
    cp "$ZSHRC_FILE" "$HOME"
else
    echo ".zshrc file not found in dotfiles repository."
fi


# Install Homebrew packages from brew_packages.txt
BREW_PACKAGES_FILE="$DOTFILES_DIR/brew_packages.txt"
if [ -f "$BREW_PACKAGES_FILE" ]; then
    echo "Installing Brew packages..."
    while read -r line; do
        brew install "$line"
    done < "$BREW_PACKAGES_FILE"
else
    echo "brew_packages.txt file not found in dotfiles repository."
fi

echo "Setup complete."
