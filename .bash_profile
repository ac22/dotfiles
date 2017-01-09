set -o vi
bind '"jk":vi-movement-mode'
bind '"jk":"\e"'
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
alias ls="ls -G"
alias vi="/usr/local/bin/vim"
alias rgssh="ssh anand@devbox.rotogrinders.com"
alias grep="grep --color=auto"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
