# http://hackercodex.com/guide/parallel-bzip-compression/
# Check to see if pbzip2 is already on path; if so, set BZIP_BIN appropriately
# type -P pbzip2 &>/dev/null &&
export BZIP_BIN="pbzip2"

alias bz=$BZIP_BIN
tarb() {
  tar -cf "$1".tbz --use-compress-prog=$BZIP_BIN "$1"
}
untarbzip() {
  $BZIP_BIN -dc "$1" | tar x --exclude="._*"
}

alias buntar=untarbzip