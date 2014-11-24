# colour based aliases
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# SVN shortcuts
alias si='svn info'
alias se='svn pg svn:externals'
alias ss='svn status'

# Git shortcuts
alias gs='git status'
alias ga='git add'
alias gc='git commit --verbose'
alias gp='git push'
alias gd='git diff'
alias gb='git branch'
alias go='git checkout'

# Composer hacks
# Checks the status of all git based vendor repositories
alias vendorstatus='pushd . >/dev/null; cd $(git rev-parse --show-toplevel); if [ -d vendor ]; then echo; for dir in $(find vendor -maxdepth 3 -type d -name .git); do dir=$(dirname $dir); pushd . >/dev/null; cd "$dir"; status=$(git status -s); if [ ! -z "$status" ]; then echo "$dir"; git status; echo; fi; popd>/dev/null; done; fi; popd >/dev/null;'
alias gs="git status; vendorstatus"

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
