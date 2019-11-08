#!/bin/bash
export PATH=~/usr/bin/python:$PATH
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

## Use a long listing format ##
alias ll='ls -la'
alias ports='netstat -tulanp'
alias locals='RAILS_ENV=local_staging bundle exec rails s'
alias zup='zeus start'

alias gitree='gitree+ | head -n `expr $LINES / 2`'
alias gitree+='git log --oneline --abbrev-commit --all --graph --decorate --color'

localp () {
  lpass login bswitzer@newrelic.com
  RAILS_ENV=local_production bundle exec rails s
}

# Reduce typing when using the 'cd' command
CDPATH=".:~:~/Projects"
