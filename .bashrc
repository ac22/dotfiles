set -o vi
bind '"jk":vi-movement-mode'
bind '"jk":"\e"'

export CLICOLOR=1
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
export GOPATH="/Users/anand/.go"
export GOBIN="$GOPATH/bin"
export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$GOPATH:$GOBIN:$PATH"
export PS1='\[\e[1;32m\]\u@\h\[\e[1;00m\]:\[\e[1;34m\]\w\[\e[1;35m\]$(type -t __git_ps1 &> /dev/null && __git_ps1)\[\e[1;00m\] \n\$ '

alias grep="grep --color=auto"
alias py="python3"
alias vi="/usr/local/bin/nvim"

[ -f `brew --prefix`/etc/bash_completion ] && source `brew --prefix`/etc/bash_completion
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
[ -f ~/.git-completion.bash ] && source ~/.git-completion.bash

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
