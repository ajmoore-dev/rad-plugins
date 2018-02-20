# ~/.zshrc
### z - opens ~/.zshrc
alias z="subl /Users/alex.moore/.zshrc"
### src - apply changes to ~/.zshrc
alias src="source ~/.zshrc"


# editors
### emacs - Spacemacs
alias emacs="emacs -nw"
### s - Sublime Text 3
alias s="subl ."
### jn -Jupyter Notebook
alias jn="jupyter notebook"

export GIT_EDITOR="subl -w"

# search
### gh - search history
alias gh="history | grep -i"
### ag - search aliases
alias ag="alias | grep -i"
### eg - search ENV_VARs
alias eg="env | grep -i"


# macOS
### showFiles - show hidden files (dotfiles)
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
### hideFiles - hide hidden files (dotfiles)
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
alias cba="cd ~/code/cba-deploy"
alias co="cd ~/code"
alias dsl="cd ~/code/jenkins_dsl_jobs"
alias gopath="cd ~/code/go"
alias jd="cd ~/code/jenkins-docker"
alias mp="cd ~/code/mac-provisioning"
alias ptag="cd ~/code/go/src/ghe.megaleo.com/cban-ops/pt_tag"
alias tf="cd ~/truckfondue"
