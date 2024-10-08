# echo "Running zshrc..."

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

plugins=(
    git
    z
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh


[ -f ~/.aliases ] && source ~/.aliases
[ -f ~/.zshrc.global ] && source ~/.zshrc.global
[ -f ~/.zshrc.local ] && source ~/.zshrc.local

# Created by `pipx` on 2023-05-04 01:01:56
export PATH="$PATH:/Users/javon/.local/bin"
