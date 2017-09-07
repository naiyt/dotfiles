alias "time"="time -p"
alias "be"="bundle exec $argv"
alias "ber"="bundle exec rake $argv"

set -x PRY_THEME dark

. "$HOME/.homesick/repos/homeshick/homeshick.fish"
. "$HOME/.config/fish/local_config.fish"

homeshick --quiet refresh

set fish_greeting ""

fish_vi_key_bindings
set -g __fish_vi_mode 1

alias vim="mvim -v"

setenv EDITOR "subl -n -w"

# eval (python -m virtualfish)

# Load rbenv automatically by appending
# the following to ~/.config/fish/config.fish:

status --is-interactive; and . (rbenv init -|psub)

homeshick --quiet refresh 2

# Using the bobthefish theme: https://github.com/oh-my-fish/oh-my-fish/blob/master/docs/Themes.md
set -g theme_color_scheme light
