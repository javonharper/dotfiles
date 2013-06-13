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

