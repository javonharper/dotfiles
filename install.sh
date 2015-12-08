#!/bin/bash

# shell & emulator config
ln -sf $PWD/bashrc $HOME/.bashrc
ln -sf $PWD/zshrc $HOME/.zshrc
ln -sf $PWD/aliases $HOME/.aliases
ln -sf $PWD/tmux.conf $HOME/.tmux.conf
ln -sf $PWD/gitconfig $HOME/.gitconfig

# vim config
ln -sf $PWD/vimrc $HOME/.vimrc
ln -sf $PWD/gvimrc $HOME/.gvimrc
ln -sf $PWD/vim $HOME/.vim

git submodule update --init --recursive
