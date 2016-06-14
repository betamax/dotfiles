# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if [[ "$(uname)" == "Darwin" ]] && $(gls &>/dev/null); then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

# ls aliases for Linux
if [[ "$(uname)" == "Linux" ]]; then
  alias ls="ls -F --color"
  alias l="ls -lAh --color"
  alias ll="ls -l --color"
  alias la='ls -A --color'
fi

alias pretty_json="python -mjson.tool"

alias tar-sql="find . -name '*.sql' -exec tar -cvzf {}.tar.gz {} \;"

alias gssh='nocorrect gssh'
alias eb='nocorrect eb'

alias electron='/Applications/Electron.app/Contents/MacOS/Electron'

# Save public key to clipboard
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"
