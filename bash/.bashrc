alias ls='ls -G'
alias ll='ls -lG'
alias ping='prettyping'
alias cat='bat'
alias start-minikube='minikube start --cpus 4 --memory 8192 --vm-driver kvm2'
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/projects

export VISUAL=vim
export EDITOR="$VISUAL"

function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi


export HISTCONTROL=ignoreboth:erasedups

source ~/.bash_aliases
source ~/git-completion.bash
source /usr/local/bin/virtualenvwrapper.sh

tmux attach &> /dev/null

if [[ ! $TERM =~ screen ]]; then
    exec tmux
fi


