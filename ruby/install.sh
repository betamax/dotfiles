#!/bin/sh

if VERB="$( which rbenv )" 2> /dev/null; then
  echo "  Installing rbenv for you."
  git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
  echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
  . ~/.zshrc
fi

if VERB="$( which ruby-build )" 2> /dev/null; then
  echo "  Installing ruby-build for you."
  git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
  . ~/.zshrc
fi