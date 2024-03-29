if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

alias nrp="nr1-pkg"
eval "$(rbenv init -)"

alias gl="git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
alias ll="ls -la"
export JAVA_HOME=$(/usr/libexec/java_home)

export M2_HOME=/Users/bswitzer/apache-maven-3.6.1
export PATH=$PATH:$M2_HOME/bin
