function __user_host
  if test (id -u) = 0
    echo -n (set_color --bold $MAT_ERROR)
  else
    echo -n (set_color $MAT_SECONDARY)
  end

  echo -n $USER@(string split . (hostname))[1] (set_color normal)
end

function __current_path
  echo -n (set_color $MAT_PRIMARY) (pwd) (set_color normal)
end

function _git_branch_name
  command git symbolic-ref HEAD 2> /dev/null | sed -e 's|^refs/heads/||'
end

function _git_is_dirty
  command git status -s --ignore-submodules=dirty 2> /dev/null
end



function __git_status
    if _git_branch_name
        set -l git_branch (_git_branch_name)

        if _git_is_dirty
            set git_info '‹'$git_branch"*"'›'
        else
            set git_info '‹'$git_branch'›'
        end

        echo -n (set_color "#dc8bbf")$git_info (set_color normal)
    end
end


function __parent_process
  set parent_process (awk '/PPid/{print $2}' /proc/$fish_pid/status | \
                      xargs -I {} awk '/Name/{print $2}' /proc/{}/status)
  echo -n (set_color $MAT_ERROR)‹$parent_process› (set_color normal)
end

function fish_prompt
  set -l last_status $status

  echo -n (set_color $MAT_OUTLINE)"╭─"(set_color normal)
  __user_host
  __current_path
  __git_status
  __parent_process
  echo

  if test $last_status -ne 0
    echo -n (set_color $MAT_OUTLINE)"╰─"(set_color --bold $MAT_ERROR)"󰣇 "(set_color normal)
  else
    echo -n (set_color $MAT_OUTLINE)"╰─"(set_color --bold $MAT_PRIMARY)"󰣇 "(set_color normal)
  end
end
