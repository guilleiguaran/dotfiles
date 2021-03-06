# rbenv setup
status --is-interactive; and source (rbenv init -|psub)
set --universal fish_user_paths $fish_user_paths ~/.rbenv/shims

# environment variables
set -Ux EDITOR nvim
set -gx  LC_ALL en_US.UTF-8
set -gx  LANG en_US.UTF-8
set -x PKG_CONFIG_PATH '/usr/local/lib/pkgconfig:/usr/local/opt/openssl/lib/pkgconfig:'

# aliases
abbr gst 'git status'
abbr b 'byobu'
function vim; _vim_helper nvim $argv; end
function mvim; _vim_helper gnvim $argv; end
function ccat; highlight -s molokai $argv; end
