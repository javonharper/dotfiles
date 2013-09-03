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

fatality () {
  kill -9 $1
  echo 'JAVON WINS\nFLAWLESS VICTORY'
}

# Movement
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# Movement to special folders
alias dev='cd ~/dev'
alias projects='cd ~/dev/projects'
alias dotfiles='cd ~/dev/projects/dotfiles'
alias temp='cd ~/temp'
alias desktop='cd ~/Desktop'

# Editing config files
alias ebash='vim ~/.bashrc'
alias ebash_local='vim ~/.bashrc_local'
alias elbash='ebash_local'
alias ezsh='vim ~/.zshrc'
alias ezsh_local='vim ~/.zshrc_local'
alias elzsh='ezsh_local'
alias ealiases='vim ~/.bash_aliases'
alias etmux='vim ~/.tmux.conf'

# Editng personal files
alias scratchpad='note scratchpad'
alias sp='note scratchpad'
alias pomodoro='note pomodoro'
alias p='note pomodoro'

# App shorteners
alias ack='ack-grep -i'
alias top='htop'
alias chromium-browser='chromium-browser -allow-file-access-from-files'
alias py='python'
alias rb='ruby'
alias server='python -m SimpleHTTPServer'
alias mongos='mongod --dbpath=db'
alias bi='bundle install'

alias wrapitup='sudo shutdown -P +45'
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

# Subversion Aliases
alias svnadd='svn st | grep "?" | awk "{print $2}" | xargs svn add $1'

# Functions
function psgrep() {
  ps auxww | grep ${1} | grep -v "grep ${1}"
}

function note() {
  touch ~/docs/notes/${1}
  vim ~/docs/notes/${1}
}

function cuke() {
  cucumber --tags ~@ignore features/$1.feature
}

# I know kung-fu
alias neo='echo -ne "\e[32m" ; while true ; do echo -ne "\e[$(($RANDOM % 2 + 1))m" ; tr -c "[:print:]" " " < /dev/urandom | dd count=1 bs=50 2> /dev/null ; done'

alias fors="foreman start -f Procfile.dev"
