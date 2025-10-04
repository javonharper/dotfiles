#!/bin/bash

# Install Oh My Zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Installing Oh My Zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
else
    echo "Skipping Oh My Zsh.  Already installed"
fi

# Install Rust
if ! command -v rustc &> /dev/null; then
    echo "Installing Rust..."
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
    source $HOME/.cargo/env
else
    echo "Skipping Rust.  Already installed"
fi

# Install Homebrew if it's not already installed
if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update Homebrew
brew update

# Install Git
if command -v git &> /dev/null; then
    echo "Skipping git.  Already installed."
else
    echo "Installing git..."
    brew install git
fi

# Install Deno
if command -v deno &> /dev/null; then
    echo "Skipping deno.  Already installed."
else
    echo "Installing Deno..."
    brew install deno
fi

# Install Visual Studio Code
if [ -d "/Applications/Visual Studio Code.app" ]; then
    echo "Skipping Visual Studio Code.  Already installed."
else
    echo "Installing Visual Studio Code..."
    brew install --cask visual-studio-code
fi

# Install iTerm2
if [ -d "/Applications/iTerm.app" ] || [ -d "/Applications/iTerm2.app" ]; then
    echo "Skipping iTerm2.  Already installed."
else
    echo "Installing iTerm2..."
    brew install --cask iterm2
fi

# Install tmux
if command -v tmux &> /dev/null; then
    echo "Skipping tmux.  Already installed."
else
    echo "Installing tmux..."
    brew install tmux
fi

# Install Neovim
if command -v nvim &> /dev/null; then
    echo "Skipping Neovim.  Already installed."
else
    echo "Installing Neovim..."
    brew install neovim
fi

# Install Firefox
if [ -d "/Applications/Firefox.app" ]; then
    echo "Skipping Firefox.  Already installed."
else
    echo "Installing Firefox..."
    brew install --cask firefox
fi

# Install Raycast
if [ -d "/Applications/Raycast.app" ]; then
    echo "Skipping Raycast.  Already installed."
else
    echo "Installing Raycast..."
    brew install --cask raycast
fi

if [ -d "/Applications/Steam.app" ]; then
    echo "Skipping Steam.  Already installed."
else
    echo "Installing Steam..."
  brew install --cask steam
fi

# Preferences
touch ~/.hushlogin

# Symlink shell  config
ln -sf $PWD/bashrc $HOME/.bashrc
ln -sf $PWD/zshrc $HOME/.zshrc
ln -sf $PWD/zshrc.global $HOME/.zshrc.global

FILE=~/.zshrc.local

if [ ! -f "$FILE" ]; then
    cp zshrc.local ~/.zshrc.local
    echo "Copied zshrc.local to ~/.zshrc.local"
else
    echo "$FILE already exists. Skipping..."
fi

# Symlink dotfiles
ln -sf $PWD/aliases $HOME/.aliases
ln -sf $PWD/tmux.conf $HOME/.tmux.conf
ln -sf $PWD/gitconfig $HOME/.gitconfig
ln -sf $PWD/gitmessage $HOME/.gitmessage
ln -sf $PWD/gitignore.global $HOME/.gitignore.global


echo "Installation complete!"

