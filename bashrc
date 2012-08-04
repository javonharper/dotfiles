export EDITOR=vim

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.bashrc_local ]; then
    . ~/.bashrc_local
fi
