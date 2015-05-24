alias "tpOff"="~/source/git/disable-touchpad/disableTouchpad -d"
alias "tpOn"="~/source/git/disable-touchpad/disableTouchpad -e"
alias "time"="time -p"

. "$HOME/.homesick/repos/homeshick/homeshick.fish"
. "$HOME/.config/fish/local_config.fish"

homeshick --quiet refresh

set fish_greeting ""
