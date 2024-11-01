#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias mv='mv -v'
alias cp='cp -v'
alias rm='rm -v'
alias ln='ln -v'
alias chmod='chmod -v'
alias mkdir='mkdir -v'
alias rmdir='rmdir -v'

alias diff='diiff --color=auto'
alias grep='grep --color=auto'
alias ip='ip --color=auto'
alias ls='eza --icons --color=auto'

export MANPAGER="less -R --use-color -Dd+r -Du+b"
export MANROFFOPT="-P -c"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

export PATH="/home/otto/.cache/.bun/bin:$PATH"
export PATH="/home/otto/.local/bin:$PATH"
export PATH="/home/otto/.config/emacs/bin:$PATH"

PS1='[\u@\h \W]\$ '

fastfetch

