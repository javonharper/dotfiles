#!/bin/bash

touch ~/.hushlogin

# Symlink shell  config
ln -sf $PWD/bashrc $HOME/.bashrc
ln -sf $PWD/zshrc $HOME/.zshrc
ln -sf $PWD/zshrc.global $HOME/.zshrc.global

FILE=~/.zshrc.local

if [ ! -f "$FILE" ]; then
    cp ~/zshrc.local ~/.zshrc.local
    echo "Copied template.zshrc.local to ~/.zshrc.local"
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
# ln -sf $PWD/vimrc $HOME/.vimrc

# git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# vim +PluginInstall +qall

echo "Done."
