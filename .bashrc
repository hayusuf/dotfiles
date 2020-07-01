#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\e[1;34m\u\e[0m \e[0;34m@\e[0m \e[1;36m\h\e[0m \e[1;34m\W\e[0m $ '

alias fullclean="git checkout master && make clean && rm -f config.h && git reset --hard origin/master"
