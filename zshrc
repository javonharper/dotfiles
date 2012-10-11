export PROMPT='[%n at %~]$ '

if [[ -a ~/.zshrc_local ]]
then
    source ~/.zshrc_local
fi

if [[ -a ~/.zshrc_aliases ]]
then
    source ~/.zsh_aliases
fi

if [[ -a ~/.bash_aliases ]]
then
    source ~/.bash_aliases
fi
