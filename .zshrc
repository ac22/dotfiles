bindkey -v
bindkey 'jk' vi-cmd-mode

export CLICOLOR=1
export FZF_DEFAULT_COMMAND='fd --type f --no-ignore --follow --exclude "{.git/*,node_modules/*}"'
export FZF_CTRL_T_COMMAND='fd --type d --no-ignore --follow --exclude "{.git,node_modules}"'
export GOPATH="/Users/anand/.go"
export GOBIN="/Users/anand/.go/bin"
export PATH="$GOBIN:/usr/local/bin:/usr/local/sbin:~/bin:$PATH"

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
setopt interactivecomments

alias vi="/usr/local/bin/nvim"

function json_diff() {
        diff <(gron $1) <(gron $2)
}

fpath=(~/.zsh $fpath)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

export MANPAGER='nvim +Man!'
