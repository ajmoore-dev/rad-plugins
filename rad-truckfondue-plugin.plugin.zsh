# ~/.zshrc
### .rc - Opens ~/.zshrc
alias .rc="code $HOME/.zshrc"
### s.rc - Apply changes to ~/.zshrc
alias s.rc="source ~/.zshrc"


# editors
alias c="code -nw"
alias s="subl ."


# search
### eh - Search history
alias eh="history | grep -i"
### ea - Search aliases
alias ea="alias | grep -i"
### ee - Search ENV_VARs
alias ee="env | grep -i"


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
