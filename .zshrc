# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/manue1/.oh-my-zsh"

ZSH_THEME="pygmalion"

# Which plugins would you like to load?
plugins=(
  git
  docker
  vagrant
  golang
  kubectl
)

source $ZSH/oh-my-zsh.sh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export GPG_TTY=$(tty)

function bp-ssh() {
  ssh -A build@manue1-$1.service.bpdev-us-east-1.github.net
}

function bp-code() {
  code --remote ssh-remote+build@manue1-$1.service.bpdev-us-east-1.github.net /workspace/enterprise2
}

function bp-dev() {
  code --remote ssh-remote+build@manue1-$1.service.bpdev-us-east-1.github.net /workspace/enterprise2 && ssh -A build@manue1-$1.service.bpdev-us-east-1.github.net
}

# Go setup
export GOPROXY=https://goproxy.githubapp.com/mod,https://proxy.golang.org/,direct
export GONOSUMDB='github.com/github/*,github.com/manue1/*'
export GONOPROXY=
export GO_PATH=~/go
export PATH=$PATH:/$GO_PATH/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=/Users/manue1/tools/awssume/bin:$PATH

eval "$(rbenv init -)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/manue1/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/manue1/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/manue1/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/manue1/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
