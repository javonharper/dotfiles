export ZSH_DISABLE_COMPFIX=true
export EDITOR=vim
export ZSH="/Users/javon/.oh-my-zsh"

ZSH_THEME="minimal"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
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

# Created by `pipx` on 2021-03-25 20:55:02
export PATH="$PATH:/Users/javon/Library/Python/3.8/bin"

# Created by `pipx` on 2021-03-25 20:55:02
export PATH="$PATH:/Users/javon/.local/bin"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/javon/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/javon/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/javon/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/javon/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
export PATH=$HOME/bin:$PATH
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
