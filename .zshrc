bindkey -v
bindkey 'jk' vi-cmd-mode

export CLICOLOR=1
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
export GOPATH="/Users/anand/.go"
export GOBIN="$GOPATH/bin"
export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$GOPATH:$GOBIN:$PATH"

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }
# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '(%b)'
# enable the default zsh completions!
autoload -Uz compinit && compinit
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
NEWLINE=$'\n'
setopt PROMPT_SUBST
export PS1='%F{red}%n%F{reset_color}@%F{green}%m%F{reset_color}:%F{blue}%~ %F{magenta}${vcs_info_msg_0_}${NEWLINE}%F{reset_color}$ '

setopt inc_append_history
setopt share_history

alias grep="grep --color=auto"
alias py="python3"
alias vi="/usr/local/bin/nvim"

function json_diff() {
        diff <(gron $1) <(gron $2)
}

fpath=(~/.zsh $fpath)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

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
