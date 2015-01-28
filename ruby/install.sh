#!/bin/sh
command_exists () {
  command -v "$1" >/dev/null 2>&1;
}

if ! command_exists rbenv; then
  echo "  Installing rbenv for you."
  git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
  echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
  . ~/.zshrc
fi

if ! command_exists ruby-build; then
  echo "  Installing ruby-build for you."
  git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
  . ~/.zshrc
fi