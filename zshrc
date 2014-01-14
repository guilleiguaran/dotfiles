# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

PROJECTS_DIR="/Users/guille/code"
p() {
  PROJECT_NAME="$1";
  cd "$PROJECTS_DIR/$PROJECT_NAME";
}

_projects_list() {
  reply=($(ls $PROJECTS_DIR))
}

compctl -K _projects_list p

git_prompt() {
  ref=$(git symbolic-ref HEAD 2> /dev/null | cut -d'/' -f3) || return
  if test -n "$ref"; then
    echo "[$ref]"
  fi
}
export PROMPT='%~%{$fg[green]%}$(git_prompt)%{$reset_color%} %% '

# Default PATH value
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin

# Add rbenv to PATH
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Add npm to PATH
export PATH="/usr/local/share/npm/bin:$PATH"

# GC tunning
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_GC_HEAP_FREE_SLOTS=600000
export RUBY_GC_HEAP_INIT_SLOTS=800000

# Set LANG and LC_ALL to UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Set Android home folder
export ANDROID_HOME="/Users/guille/code/android-sdk-macosx"

# Android Tools and Platform Tools
export PATH="$HOME/code/android-sdk-macosx/platform-tools:$PATH"
export PATH="$HOME/code/android-sdk-macosx/tools:$PATH"

# Elixir and Rebar
export PATH="$HOME/code/elixir/bin:$PATH"
export PATH="$HOME/code/rebar:$PATH"

# Set default Java version
# export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Versions/1.6.0/Home"
