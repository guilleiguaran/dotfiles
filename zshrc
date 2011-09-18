# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

###
# Shortcut to projects directory: you can replace 'p' with your favorite word/character
#

PROJECTS_DIR="/Users/guille/code"
p() {
  PROJECT_NAME="$1";
  cd "$PROJECTS_DIR/$PROJECT_NAME";
}

_projects_list() {
  reply=($(ls $PROJECTS_DIR))
}

compctl -K _projects_list p

###
# Autocompletes apps after typing --app on the command line
#

_heroku_apps() {
  reply=($(heroku list | awk {'print $1'}))
}

compctl -x 's[--app],c[-1,--app]' -K _heroku_apps -- heroku

export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/local/bin:/Developer/usr/bin
export NODE_PATH=/usr/local/lib/node

alias ls="ls -G"
alias mit-scheme="/Applications/mit-scheme.app/Contents/Resources/mit-scheme"
git_prompt() {
  ref=$(git symbolic-ref HEAD 2> /dev/null | cut -d'/' -f3) || return
  if test -n "$ref"; then
    echo "[$ref]"
  fi
}
export PROMPT='%~%{$fg[green]%}$(git_prompt)%{$reset_color%} %% '


# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

export EC2_HOME=~/.ec2
export PATH=$PATH:$EC2_HOME/bin
export EC2_PRIVATE_KEY=`ls $EC2_HOME/pk-*.pem`
export EC2_CERT=`ls $EC2_HOME/cert-*.pem`
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home/
#export CC=/Developer/usr/bin/gcc-4.2
export POW_DOMAINS=dev
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

#export RUBY_GC_MALLOC_LIMIT=16000000
#export RUBY_HEAP_MIN_SLOTS=150000
