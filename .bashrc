# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#xrdb ~/.Xresources

(cat ~/.cache/wal/sequences &)


alias bashcon='sudo nano ./.bashrc'
alias clr='clear'
alias ~='cd ~'
alias i3conf='sudo nano ./.config/i3/config'
alias xconf='sudo nano ./.xinitrc'
alias alsa='alsamixer -g'
