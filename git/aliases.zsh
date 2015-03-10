# The rest of my fun git aliases
alias gl='git pull origin HEAD'
alias glog="git lg"
alias gp='git push origin HEAD'
alias gpd='git push origin HEAD && git aws.push'
alias gpdnv='git push origin HEAD --no-verify && git aws.push'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gcm='git commit -m'
alias gco='git checkout'
alias gb='git branch'
alias gs='git status -sb'
alias grm="git diff --diff-filter=D --name-only -z | xargs -0 git rm"