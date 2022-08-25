#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\W \$ '
. "$HOME/.cargo/env"
