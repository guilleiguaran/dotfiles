# rbenv setup
status --is-interactive; and source (rbenv init -|psub)
set --universal fish_user_paths $fish_user_paths ~/.rbenv/shims

# environment variables
set -Ux EDITOR nvim
set -gx  LC_ALL en_US.UTF-8
set -gx  LANG en_US.UTF-8

# aliases
abbr gst 'git status'
abbr b 'byobu'
function vim; nvim $argv; end
function mvim; gnvim -- $argv; end
