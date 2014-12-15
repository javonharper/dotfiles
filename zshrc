# Prompt
export PROMPT='[%~]$ '
export RPROMPT='%n'

if [[ -a ~/.bash_aliases ]]
then
    source ~/.bash_aliases
fi

if [[ -a ~/.zshrc_local ]]
then
    source ~/.zshrc_local
fi

if [[ -a ~/.zsh_aliases ]]
then
    source ~/.zsh_aliases
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  ]]

zstyle ':completion:::git:*' script /usr/local/etc/bash_completion.d/git-completion.bash

fpath=(/usr/local/share/zsh/site-functions $fpath)



PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="$HOME/Misc/Apps:$PATH"
