# The fish_mode_prompt function is prepended to the prompt
function fish_mode_prompt --description "Displays the current mode"
  # Do nothing if not in vi mode
  if set -q __fish_vi_mode
    switch $fish_bind_mode
      case default
        set_color red
        echo 'n' 
      case insert
        set_color green
        echo 'i'
      case visual
        set_color magenta
        echo 'v'
    end
    set_color normal
    echo -n ' '
  end
end