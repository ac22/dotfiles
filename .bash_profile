alias ls="ls -G"
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
alias rgssh="ssh anand@devbox.rotogrinders.com"
alias vi="/usr/local/bin/vim"
export GOPATH=$HOME/workspace/go
export PATH=$PATH:$GOPATH/bin
