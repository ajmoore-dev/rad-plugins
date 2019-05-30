### c - Open the current working directory in VSC
alias c="code -n ."
### s - Open the current working directory in ST3
alias s="subl -n"

### co - Change directories to $HOME/code
alias co="cd $HOME/code"

# search
### eh - Search history
alias eh="history | grep -i"
### ea - Search aliases
alias ea="alias | grep -i"
### ee - Search ENV_VARs
alias ee="env | grep -i"

#k8s
alias k="kubectl"
alias kctx="kubectx"
alias kns="kubens"

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

### git-rebase - Synchronizes origin/master with upstream/master
git-rebase() {
  git checkout master
  git fetch upstream --prune
  git rebase upstream/master
  git push origin master
}

### md - Convenience method to create a new directory and cd into it
md () {
  mkdir -p -- "$1"
  cd -P -- "$1"
}

# local-ip - Try finding the first ethernet adapter that has a valid ipv4 address
local-ip() {
  for i in `seq 0 10`; do
    res="$(/sbin/ifconfig en${i} | grep 'inet' | grep -v inet6 | awk '{print $2}')"
    [[ -n $res ]] && echo $res && return
  done
}
