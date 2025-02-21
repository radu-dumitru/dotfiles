#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Start X on login
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

