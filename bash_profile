[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# added by Anaconda3 4.0.0 installer
export PATH="/Users/campeterson/anaconda/bin:$PATH"

# jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# custom aliases
alias gs='git status'
alias ga='git add -p'
alias gps='git push'
alias gpl='git pull --rebase'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias ll='ls -lah'

# tell 'ls' to be colorful
export CLICOLOR=1
# allow 'grep' to highlight matches
export GREP_OPTIONS='--color=auto'

source /usr/local/opt/autoenv/activate.sh

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

if which jenv > /dev/null; then eval "$(jenv init -)"; fi

# For PipelineDB
export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:/usr/lib/pipelinedb/lib

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin
export PATH="/usr/local/sbin:$PATH"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

function title {
  echo -ne "\033]0;"$*"\007"
}
