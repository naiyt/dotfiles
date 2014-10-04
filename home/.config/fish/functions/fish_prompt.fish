function fish_prompt
	
  if not set -q -g __fish_robbyrussell_functions_defined
    set -g __fish_robbyrussell_functions_defined
    function _git_branch_name
      echo (git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
    end
	
    function _is_git_dirty
      echo (git status -s --ignore-submodules=dirty ^/dev/null)
    end
  end

  set -l cyan (set_color -o cyan)
  set -l yellow (set_color -o yellow)
  set -l red (set_color -o red)
  set -l green (set_color -o green)
  set -l blue (set_color -o blue)
  set -l normal (set_color normal)

  set -l arrow "$red➜ "
  set -l cwd $cyan(basename (prompt_pwd))

    
  if [ (_git_branch_name) ]
    if [ (_is_git_dirty) ]
        set -l git_branch $red(_git_branch_name)
        set git_info "$blue ($git_branch$blue$yellow✗)"
    else
        set -l git_branch $green(_git_branch_name)
        set git_info "$blue ($git_branch$blue$green✓)"
    end
  end

  echo -n -s $blue(whoami)$cyan@$blue(hostname) $git_info ' ' $cwd' ' $normal $arrow ' '
end
