export PATH="./bin:$HOME/.bin:/usr/local/sbin:/usr/local/bin:$HOME/.sfs:$ZSH/bin:$PATH"
export PATH="$HOME/.rbenv/shims:$HOME/.rbenv/bin:$PATH"

export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"

# Set EC2 vars if keys are present
if [ -d "$HOME"/.ec2/ ]; then
  export EC2_PRIVATE_KEY="$(/bin/ls "$HOME"/.ec2/pk-*.pem | /usr/bin/head -1)"
  export EC2_CERT="$(/bin/ls "$HOME"/.ec2/cert-*.pem | /usr/bin/head -1)"
fi

export AWS_RDS_HOME="/usr/local/Cellar/rds-command-line-tools/1.14.001/libexec"

export ANDROID_HOME=/Users/Max/Documents/ADT/sdk
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

export PROJECTS="$HOME/Lateral"

export GOPATH=/Users/Max/.go
export PATH=$GOPATH/bin:$PATH