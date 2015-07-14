alias "time"="time -p"
alias "be"="bundle exec $argv"
alias "ber"="bundle exec rake $argv"
alias "r3"="rvm use ruby-1.9.3-p484"
alias "r4"="rvm use 2.2.2"

. "$HOME/.homesick/repos/homeshick/homeshick.fish"
. "$HOME/.config/fish/local_config.fish"

homeshick --quiet refresh

set fish_greeting ""
