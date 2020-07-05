#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\[\033[1;34m\]\u \[\033[0;34m\]@ \[\033[1;36m\]\h \[\033[1;34m\]\W $ '

alias fullclean="git checkout master && make clean && rm -f config.h && git reset --hard origin/master"
