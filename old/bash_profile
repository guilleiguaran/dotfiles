function bash_git_branch
{
  git branch 2> /dev/null | grep \* | awk '{print "[" $2 "]"}'
}

alias ls="ls -G"
export PS1='\w\e[0;32m$(bash_git_branch)\e[m % '

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
