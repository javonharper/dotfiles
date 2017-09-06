export EDITOR=vim

ZSH_THEME="simple"

DISABLE_AUTO_UPDATE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
export UPDATE_ZSH_DAYS=13

plugins=(git)

if [[ -a ~/.zshrc.local ]]
then
    source ~/.zshrc.local
fi

if [[ -a ~/.aliases ]]
then
    source ~/.aliases
fi

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH=/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH
