# ~/.zshrc
### z - Opens ~/.zshrc
alias z="subl /Users/alex.moore/.zshrc"
### src - Apply changes to ~/.zshrc
alias src="source ~/.zshrc"


# editors
alias sm="emacs -nw"
alias s="subl ."
alias jn="jupyter notebook"


# search
### gh - Search history
alias gh="history | grep -i"
### ag - Search aliases
alias ag="alias | grep -i"
### eg - Search ENV_VARs
alias eg="env | grep -i"


# macOS
### showFiles - Show hidden files (dotfiles)
### Example: showFiles
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
### hideFiles - Hide hidden files (dotfiles)
### Example: showFiles
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'


# git -> most used commands simplified
alias gaa="git add ."
alias gb="git branch"
alias gca="gaa && git commit --amend"
alias gcb="git checkout -b"
alias gcl="git clone"
alias gcm="git checkout master"
alias gcmsg="gaa && git commit -m"
alias gco="git checkout"
alias gd="git diff"
alias gds="git diff --staged"
alias gf="git fetch"
alias ggpush="git push origin HEAD"
alias gl="git log"
alias gp="git stash pop"
alias gr="git remote"
alias gra="git remote add upstream"
alias grv="git remote -v"
alias gst="git status"
alias gsta="git add . && git stash"
alias gump="git checkout master && git fetch upstream --prune && git rebase upstream/master && git push origin master"
alias gclear="git stash clear"

# navigation
alias tf="cd ~/truckfondue"

# docker
alias dcd="docker-compose down -v"
### dbash - exec into a running container
### Example: dbash c157caf0538b
dbash() { docker exec -it $1 bash }

### dst - stop one or more running containers
### Example: dst c157caf0538b f6d41f8ffd5d
dst () {
  docker stop "$@"
}
