if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

alias mkdir='mkdir -p'
alias cp='cp -r'
alias rm='rm -r'
alias cmx='chmod +x'
alias c='clear'
alias start-networking='sudo nmcli nm sleep false'

fatality () {
  kill -9 $1
  echo 'JAVON WINS\nFLAWLESS VICTORY'
}

k () {
  printf 'Attempting to kill process %s...\n' $1
  kill -9 $1
}

# Movement
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# Movement to special folders
alias cdroot='cd "$(git rev-parse --show-toplevel)"'
alias gitroot='cd "$(git rev-parse --show-toplevel)"'
alias root='cd "$(git rev-parse --show-toplevel)"'

# Editing config files
alias ebash='vim ~/.bashrc'
alias ebash_local='vim ~/.bashrc_local'
alias elbash='ebash_local'
alias ezsh='vim ~/.zshrc'
alias ezsh_local='vim ~/.zshrc_local'
alias elzsh='ezsh_local'
alias ealiases='vim ~/.bash_aliases'
alias etmux='vim ~/.tmux.conf'

# App shorteners
alias ack='ack-grep -i'
alias top='htop'
alias py='python'
alias rb='ruby'

alias server='python -m SimpleHTTPServer'
alias tmux="TERM=screen-256color-bce tmux"
alias forms="foreman start -f Procfile.dev"
alias mongos='mongod --dbpath=db'

alias rmsketch="rm Library/Application\ Support/com.bohemiancoding.sketch3/.sketch3"
alias dcss='ssh joshua@crawl.akrasiac.org' #pass: joshua

# Mercurial Aliases
alias hp='hg push'
alias hu='hg fetch'
alias hur='hg pull --rebase'
alias hs='hg status'
alias hd='hg diff | view -'
alias hp='hg push'
alias hl='hg log -G -l5'
alias hi='hg in'
alias ho='hg out'

# Git Aliases
alias gcd='cd $(git rev-parse --show-toplevel)'
alias gp='git push'
alias gu='git pull'
alias gs='git status'
alias gd='git diff | view -'
alias gdc='git diff --cached | view -'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"
alias ga='git add -A .'
alias gb='git branch'
alias gbd='git branch -D'
alias gc='git commit'
alias gac='ga; git commit'
alias gco='git checkout'
alias gr='git rebase -i'
alias gsince='git diff master.. | vim -'

# Subversion Aliases
alias svnadd='svn st | grep "?" | awk "{print $2}" | xargs svn add $1'

# Functions
# Find all the processes that match a string
function psgrep() {
  ps auxww | grep ${1} | grep -v "grep ${1}"
}

# I know kung-fu
alias neo='echo -ne "\e[32m" ; while true ; do echo -ne "\e[$(($RANDOM % 2 + 1))m" ; tr -c "[:print:]" " " < /dev/urandom | dd count=1 bs=50 2> /dev/null ; done'
