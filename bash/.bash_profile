alias ltr='ls -Gltr'
alias la='ls -Gla'
alias ll='ls -GFhl'
alias kube='kubectl'
alias mk='minikube'
alias f='open -a Finder ./'
alias c='clear'
alias grep='grep --color $*'
mcd () { mkdir -p "$1" && cd "$1"; }

alias s='serverless $*'
alias tf='terraform $*'

alias d='docker $*'
alias dc='docker-compose $*'

alias s='serverless $*'

export PATH=~/bin:~/Documents/dev/apache-maven-3.5.0/bin:$PATH
export JAVA_HOME=$(/usr/libexec/java_home)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

