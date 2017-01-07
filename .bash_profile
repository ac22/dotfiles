set -o vi
bind '"jk":vi-movement-mode'
bind '"jk":"\e"'
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
alias ls="ls -G"
alias vi="/usr/local/bin/vim"
alias rgssh="ssh anand@devbox.rotogrinders.com"
alias py="/usr/local/bin/python3"
alias grep="grep --color=auto"

export GOPATH=$HOME/workspace/go
export PATH=$PATH:$GOPATH/bin
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
