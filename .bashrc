#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1=' \W   '

alias fullclean="git checkout master && make clean && rm -f config.h && git reset --hard origin/master"
