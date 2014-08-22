set fish_greeting "You sorry fool. You could not be the chosen one."
alias "tpOff"="~/source/git/disable-touchpad/disableTouchpad -d"
alias "tpOn"="~/source/git/disable-touchpad/disableTouchpad -e"

. "$HOME/.homesick/repos/homeshick/homeshick.fish"
. "$HOME/.config/fish/local_config.fish"

homeshick --quiet refresh
