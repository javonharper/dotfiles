export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="simple"

DISABLE_AUTO_UPDATE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
export UPDATE_ZSH_DAYS=13

plugins=(git gem git-flow lein npm rails sublime wd grunt)

if [[ -a ~/.zshrc_local ]]
then
    source ~/.zshrc_local
fi

if [[ -a ~/.zsh_aliases ]]
then
    source ~/.zsh_aliases
fi

export PATH="/Users/javon/Misc/Binaries:/usr/local/heroku/bin:/Users/javon/.rvm/gems/ruby-1.9.3-p484/bin:/Users/javon/.rvm/gems/ruby-1.9.3-p484@global/bin:/Users/javon/.rvm/rubies/ruby-1.9.3-p484/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/javon/.rvm/bin:/Users/javon/Binary:/Users/javon/.rvm/bin"
export PATH=/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH
. /Users/javon/.bin/z.sh

source $ZSH/oh-my-zsh.sh

