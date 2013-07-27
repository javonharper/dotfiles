export EDITOR=vim

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.bashrc_local ]; then
    . ~/.bashrc_local
fi

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
