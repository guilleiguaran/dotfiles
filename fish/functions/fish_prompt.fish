function fish_prompt --description 'Write out the prompt'
  set prompt_git (git rev-parse --abbrev-ref HEAD 2> /dev/null)
  set -U fish_prompt_pwd_dir_length 0

  echo -n (prompt_pwd)
  if test -n "$prompt_git"
    set_color -o green
    echo -n '['$prompt_git']'
    set_color normal
  end
  echo -n ' % '
end
