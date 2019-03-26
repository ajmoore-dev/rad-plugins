### c - Open the current working directory in VSC
alias c="code -nw"
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

# git-rebase - Synchronizes origin/master with upstream/master
git-rebase() {
  git checkout master
  git fetch upstream --prune
  git rebase upstream/master
  git push origin master
}

# local-ip - Try finding the first ethernet adapter that has a valid ipv4 address
local-ip() {
  for i in `seq 0 10`; do
    res="$(/sbin/ifconfig en${i} | grep 'inet' | grep -v inet6 | awk '{print $2}')"
    [[ -n $res ]] && echo $res && return
  done
}
