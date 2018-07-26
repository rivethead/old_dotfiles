alias gadd='git add -A'
alias gs='git status'

alias gl="git log --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias glog="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"

alias gmkb='git checkout -b'
alias gcdb='git checkout'
alias gc='git clean -d -f'
alias ls='ls -laF '

alias .='cd ..'
alias ..='cd ../..'
alias ...='cd ../../..'

alias ll='ls -lha'

alias gprep='git fetch --all; git rebase origin/master'
alias gpush='git push origin master'

alias xclip="xclip -selection c"

# git-standup for homestead
alias hup="cd ~/projects/homestead; git-standup -a \"all\" -d 10 -s -f "

# feature branches
function push_to_feature_branch() {
	CB=$(git symbolic-ref --short -q HEAD)
	printf "Feature branch is ${CB}\n"
	gadd
	git commit
	gprep
	gcdb "${CB}"
	git pull origin ${CB}
	git push origin ${CB}
	return
}


alias gcfb="gcdb master; gprep; gmkb"
alias gpfb=" gadd; git commit; gprep; gcdb ${CB}; git push"
alias test="push_to_feature_branch"

