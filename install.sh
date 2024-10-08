#!/bin/bash

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

# vim config
ln -sf $PWD/init.lua $HOME/.config/nvim/init.lua


echo "Done."
