alias gadd='git add -A'
alias gs='git status'
alias gcb='git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'

alias gl="git log --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias glog="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"

alias gmkb='git checkout --track origin/develop -b'
alias gcdb='git checkout '
alias gc='git clean -d -f'
alias ls='ls -laF '

alias u='cd ..'
alias uu='cd ../..'
alias uuu='cd ../../..'

alias ll='ls -lha'

alias gprep='git fetch --all; git rebase origin/develop'
alias gpush='dotnet build && dotnet test --filter speed!=slow && git push origin'

# $HOME/dotnet/dotnet build && $HOME/dotnet/dotnet test --filter speed!=slow && git push origin'
