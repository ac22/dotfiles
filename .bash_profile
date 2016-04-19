alias ls="ls -G"
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
export GIT_PS1_SHOWDIRTYSTATE=1
