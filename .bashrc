set -o vi
bind '"jk":vi-movement-mode'
bind '"jk":"\e"'

export CLICOLOR=1
export FZF_DEFAULT_COMMAND='ag -g ""'
export VIRTUALENV_PYTHON='/usr/local/bin/python3'
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/workspace/python
export PS1="\u@\h:\W\$ "
source /usr/local/bin/virtualenvwrapper.sh

alias grep="grep --color=auto"
alias py="python3"
alias rgdev="cd $HOME/workspace/rotogrinders/services-vagrant-box/ && vagrant ssh"
alias rgssh="ssh anand@devbox.rotogrinders.com"
alias vi="/usr/local/bin/nvim"

[ -f `brew --prefix`/etc/bash_completion ] && source `brew --prefix`/etc/bash_completion
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
[ -f $HOME/.vim/plugged/gruvbox/gruvbox_256palette.sh ] && source $HOME/.vim/plugged/gruvbox/gruvbox_256palette.sh

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
