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

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/javon/Development/iopipe/graphql-api/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/javon/Development/iopipe/graphql-api/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/javon/Development/iopipe/graphql-api/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/javon/Development/iopipe/graphql-api/node_modules/tabtab/.completions/sls.zsh