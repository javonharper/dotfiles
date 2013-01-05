#!/bin/bash

# shell & emulator config
ln -sf $PWD/bashrc $HOME/.bashrc
ln -sf $PWD/zshrc $HOME/.zshrc
ln -sf $PWD/bash_aliases $HOME/.bash_aliases
ln -sf $PWD/terminator $HOME/.config/terminator/config

# vim config
ln -sf $PWD/vimrc $HOME/.vimrc
ln -sf $PWD/gvimrc $HOME/.gvimrc
ln -sf $PWD/vim $HOME/.vim

cp $PWD/scripts/* $HOME/bin/
