#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1=' > '
alias fullclean='git checkout master && make clean && rm -f config.h && git reset --hard origin/master'
