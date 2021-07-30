export EDITOR=vim
export ZSH="/Users/javon/.oh-my-zsh"

ZSH_THEME="minimal"

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
[[ -f /Users/javon/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/javon/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/javon/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/javon/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh

# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/javon/.config/yarn/global/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/javon/.config/yarn/global/node_modules/tabtab/.completions/slss.zsh

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
