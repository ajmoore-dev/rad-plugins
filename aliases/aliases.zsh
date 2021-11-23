### c - Open the current working directory in VSC
alias c="code -n ."

### co - Change directories to $HOME/code
alias co="cd $HOME/code"

# search
### eh - Search history
alias grh="history | grep -i"
### ea - Search aliases
alias gra="alias | grep -i"
### ee - Search ENV_VARs
alias gre="env | grep -i"

# git
alias ga="git add"
alias gaa="git add --all"
alias gb="git branch"
alias gca="gaa && git commit --amend"
alias gcb="git checkout -b"
alias gcl="git clone"
alias gcm="gco master"
alias gcmsg="gaa && git commit -m"
alias gco="git checkout"
alias ggpush="git push origin HEAD"
alias gra="git remote add"
alias grau="git remote add upstream"
alias grv="git remote -v"

### git-rebase - Synchronizes origin/(master|main) with upstream/(master|main)
git-rebase () {
	branch=${1:=master}

	git checkout $branch
	git fetch upstream --prune
	git rebase upstream/${branch}
	git push origin $branch
}

### md - Convenience method to create a new directory and cd into it
md () {
  mkdir -p -- "$1"
  cd -P -- "$1"
}
