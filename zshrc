export EDITOR=vim
export ZSH="/Users/javon/.oh-my-zsh"

ZSH_THEME="simple"

plugins=(
  git
)

if [[ -a ~/.aliases ]]
then
  source ~/.aliases
fi

export PATH="$PATH:$HOME/.rvm/bin"

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
