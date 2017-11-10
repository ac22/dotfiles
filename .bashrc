set -o vi
bind '"jk":vi-movement-mode'
bind '"jk":"\e"'

export CLICOLOR=1
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
export PS1="\u@\h:\W\$ "

alias grep="grep --color=auto"
alias py="python3"
alias rgssh="ssh anand@devbox.rotogrinders.com"
alias vi="/usr/local/bin/nvim"

[ -f `brew --prefix`/etc/bash_completion ] && source `brew --prefix`/etc/bash_completion
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# add color for man pages
man() {
        env \
                LESS_TERMCAP_mb=$(printf "\e[1;32m") \
                LESS_TERMCAP_md=$(printf "\e[1;32m") \
                LESS_TERMCAP_me=$(printf "\e[0m") \
                LESS_TERMCAP_se=$(printf "\e[0m") \
                LESS_TERMCAP_so=$(printf "\e[0;0;0m") \
                LESS_TERMCAP_ue=$(printf "\e[0m") \
                LESS_TERMCAP_us=$(printf "\e[4;34m") \
                man "$@"
}
