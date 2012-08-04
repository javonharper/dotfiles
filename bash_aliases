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

alias py='python'
alias rb='ruby'

# Movement
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias back='cd -'

alias ebash='vim ~/.bashrc'
alias elocalbash='vim ~/.bashrc_local'
alias sp='vim ~/scratchpad'

alias ack='ack-grep'
alias top='htop'
alias chromium-browser='chromium-browser -allow-file-access-from-files'

alias apt-get='sudo apt-get'
alias update='sudo apt-get update'

alias wrapitup='sudo shutdown -P +45'
alias svnadd='svn st | grep "?" | awk "{print $2}" | xargs svn add $1'
alias dcss='ssh joshua@crawl.akrasiac.org' #pass: joshua
alias server='python -m SimpleHTTPServer'

# Mercurial Aliases
alias hp='hg push'
alias hu='hg pull --rebaseif'
alias hs='hg status'
alias hd='hg diff | vim -'
alias hp='hg push'
alias hl='hg log -G -l5'
alias ho='hg out'
alias hi='hg in'

# Git Aliases
alias cdroot='cd $(git rev-parse --show-toplevel)'
alias gp='git push'
alias gu='git pull'
alias gs='git status'
alias gd='git diff | vim -'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"
alias ga='git add .'
alias gc='git commit'
alias gac='git add .;git commit'
