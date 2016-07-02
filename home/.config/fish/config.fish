alias "time"="time -p"
alias "be"="bundle exec $argv"
alias "ber"="bundle exec rake $argv"
alias gd="cd ~/Google\ Dreive"
alias mugen="cd ~/workspace/mugenmonkey-rails"

set -x PRY_THEME dark

. "$HOME/.homesick/repos/homeshick/homeshick.fish"
. "$HOME/.config/fish/local_config.fish"

homeshick --quiet refresh

set fish_greeting ""

fish_vi_key_bindings
set -g __fish_vi_mode 1

alias vim="mvim -v"
