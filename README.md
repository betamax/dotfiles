# ~/.dotfiles

These are the dotfiles that I use. I used [holman/dotfiles](https://github.com/holman/dotfiles) as a starting point, removed a lot and added quite a few things over the course of a year or two. I hadn't committed any changes up until now so I figured I'd package everything up a bit better and publish on GitHub - mainly so I can pull them on to new machines.

## Install

```sh
git clone https://github.com/betamax/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/install
script/bootstrap
```

## How it works

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.
