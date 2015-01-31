stty -ixon
export NLS_LAN=sAmerican_America.UTF8
export TERM=xterm-256color
export PS1="\[\e[00;37m\][\[\e[0m\]\[\e[00;32m\]\u\[\e[0m\]\[\e[00;37m\]@\[\e[0m\]\[\e[01;34m\]\h\[\e[0m\]\[\e[00;37m\]] \w \\$ \[\e[0m\]"
export TERM=screen-256color


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
