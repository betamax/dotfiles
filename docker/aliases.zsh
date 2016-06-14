eval `boot2docker shellinit 2>/dev/null`

alias dl='docker ps -l -q'
alias ddelexited='docker rm -v `docker ps -a -q -f status=exited`'
alias ddeldangling='docker rmi $(docker images -q -f dangling=true)'