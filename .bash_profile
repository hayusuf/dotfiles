#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

setxkbmap -option caps:escape
export EDITOR=vim

# setup path
path=("$HOME/.local/bin" $path)
# cargo why are you dumb
path=("$HOME/.cargo/bin" $path)
export PATH


if [[ -z $WAYLAND_DISPLAY && $(tty) = "/dev/tty1" ]]; then
	exec start_river.sh
fi
