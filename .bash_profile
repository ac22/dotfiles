set -o vi
bind '"jk":vi-movement-mode'
bind '"jk":"\e"'
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
alias ls="ls -G"
alias vi="/usr/local/bin/nvim"
alias rgssh="ssh anand@devbox.rotogrinders.com"
alias grep="grep --color=auto"
alias py="python3"
export FZF_DEFAULT_COMMAND='ag -g ""'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
# add color to man pages
man() {
        env \
                LESS_TERMCAP_mb=$(printf "\x1b[38;2;255;200;200m") \
                LESS_TERMCAP_md=$(printf "\x1b[38;2;255;100;200m") \
                LESS_TERMCAP_me=$(printf "\x1b[0m") \
                LESS_TERMCAP_so=$(printf "\x1b[38;2;60;90;90;48;2;40;40;40m") \
                LESS_TERMCAP_se=$(printf "\x1b[0m") \
                LESS_TERMCAP_us=$(printf "\x1b[38;2;150;100;200m") \
                LESS_TERMCAP_ue=$(printf "\x1b[0m") \
                man "$@"
}
