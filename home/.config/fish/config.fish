alias "time"="time -p"
alias "be"="bundle exec $argv"
alias "ber"="bundle exec rake $argv"
alias "berr"="bundle exec rake rspec $argv"
alias "r3"="rvm use 1.9.3"
alias "r4"="rvm use 2.2.2"

. "$HOME/.homesick/repos/homeshick/homeshick.fish"
. "$HOME/.config/fish/local_config.fish"

homeshick --quiet refresh

set fish_greeting ""
