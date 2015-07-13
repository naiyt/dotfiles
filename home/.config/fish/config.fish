alias "time"="time -p"
alias "be"="bundle exec $argv"
alias "ber"="bundle exec rake $argv"
alias "berr"="bundle exec rake rspec $argv"

. "$HOME/.homesick/repos/homeshick/homeshick.fish"
. "$HOME/.config/fish/local_config.fish"

homeshick --quiet refresh

set fish_greeting ""
