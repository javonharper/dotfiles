ln -sf $PWD/bashrc $HOME/.bashrc
ln -sf $PWD/zshrc $HOME/.zshrc
ln -sf $PWD/bash_aliases $HOME/.bash_aliases

cp $PWD/scripts/* $HOME/bin/

ln -sf $PWD/terminator $HOME/.config/terminator/config
