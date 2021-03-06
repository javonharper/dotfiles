#!/bin/bash

touch ~/.hushlogin

# shell & emulator config
ln -sf $PWD/bashrc $HOME/.bashrc
ln -sf $PWD/zshrc $HOME/.zshrc
ln -sf $PWD/aliases $HOME/.aliases
ln -sf $PWD/tmux.conf $HOME/.tmux.conf
ln -sf $PWD/gitconfig $HOME/.gitconfig
ln -sf $PWD/gitmessage $HOME/.gitmessage
ln -sf $PWD/gitignore $HOME/.gitignore_global

ln -sf $PWD/dl /bin/dl

# vim config
ln -sf $PWD/vimrc $HOME/.vimrc
ln -sf $PWD/gvimrc $HOME/.gvimrc

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall
