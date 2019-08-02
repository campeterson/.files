# custom aliases
alias gs='git status'
alias ga='git add -p'
alias gps='git push'
alias gpl='git pull --rebase'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias ll='ls -lah'
alias ta='tmux attach'
alias tn='tmux new-session'

# tell 'ls' to be colorful
export CLICOLOR=1
# allow 'grep' to highlight matches
export GREP_OPTIONS='--color=auto'

source /usr/local/opt/autoenv/activate.sh

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

if which jenv > /dev/null; then eval "$(jenv init -)"; fi

eval "$($HOME/.rbl/bin/rbl init -)"

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

export PATH=$PATH:/Users/campeterson/bin
export PATH="/usr/local/sbin:$PATH"

export VISUAL=vim
export EDITOR="$VISUAL"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

function title {
  echo -ne "\033]0;"$*"\007"
}

#export PS1="🏔  "
# https://www.cyberciti.biz/tips/howto-linux-unix-bash-shell-setup-prompt.html
#export PS1="📡  $ "
#export PS1="🏔  $ "
#export PS1=" \W 🏔  \[$(tput sgr0)\]"
export PS1=" \W 📡  \[$(tput sgr0)\]"

# added by Anaconda3 5.0.1 installer
export PATH="$PATH:/Users/campeterson/anaconda3/bin"
export PATH="/Users/campeterson/Library/Developer/Xamarin/android-sdk-macosx/platform-tools:$PATH"

source /Users/campeterson/bin/google-cloud-sdk/completion.bash.inc
source /Users/campeterson/bin/google-cloud-sdk/path.bash.inc
