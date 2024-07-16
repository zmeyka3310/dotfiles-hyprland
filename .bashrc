# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"

# Added by ProtonUp-Qt
if [ -d "/home/zmeyka/stl/prefix" ]; then export PATH="$PATH:/home/zmeyka/stl/prefix"; fi

# Aliases
alias reboot='sudo reboot'

alias fetch='fastfetch'

alias ll='ls -l'

alias cl='clear'

alias clear='clear && ufetch'

# commands to run on terminal start
ufetch