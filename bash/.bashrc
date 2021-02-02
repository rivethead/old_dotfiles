alias ls='ls -G'
alias ll='ls -lG'
alias cat='bat'
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"

export VISUAL=vim
export EDITOR="$VISUAL"
unset GREP_OPTIONS

function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi


export HISTCONTROL=ignoreboth:erasedups

source ~/.bash_aliases
source ~/git-completion.bash


#kubectx and kubens
export PATH=~/.kubectx:$PATH

PATH="/home/pieter/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/pieter/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/pieter/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/pieter/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/pieter/perl5"; export PERL_MM_OPT;

source $HOME/.asdf/asdf.sh

source $HOME/.asdf/completions/asdf.bash
export GOPATH="$HOME/workspace"
