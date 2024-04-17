# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#############
## EXPORTS ##
#############

# Path
export PATH="$HOME/.nimble/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/Scripts:$PATH"

# Apps
export EDITOR="emacs -nw"
export VISUAL="emacs"
export PAGER="moar"
export BAT_PAGER="less"
export DIFFPROG="meld"

# Java
export _JAVA_AWT_WM_NONREPARENTING=1
export AWT_TOOLKIT=MToolkit

# History
export HISTSIZE=10000
export HISTCONTROL='ignoreboth:erasedups'
export HISTFILE="$HOME/.cache/bash_history"

# Misc
export ARCH="x86_64"
export MOZ_ENABLE_WAYLAND=1
export MOZ_USE_XINPUT2=1 # touchscreen and touchpad gestures in firefox

######################
## CONFIG LOCATIONS ##
######################
export XINITRC="$HOME/.config/X11/xinitrc"
# export XSERVERRC="$HOME/.config/X11/xserverrc"


##############
## KEYBINDS ##
##############

set -o emacs
bind -x '"\C-l":clear' # make <C-l> actually clear the screen instead of redrawing it


###############
## FUNCTIONS ##
###############

function cd {
  clear &&
  builtin cd "$@" &&
  exa --icons
}

function cheat {
  curl cheat.sh/$@ | $PAGER
}


###########
## ALIAS ##
###########

# Verbose Commands
alias mv='mv -v' cp='cp -v' rm='rm -v' ln='ln -v' chmod='chmod -v'

# Colors
alias grep='grep --color=always' fgrep='fgrep --colors=always' egrep='egrep --colors=always'
alias diff='diff --color=always' ip='ip --color=always'
alias ls='exa --color=always --icons'

# Exit
alias :wq='exit' :wq!='exit' :q='exit' :q!='exit' :x='exit' :x!='exit'
alias ZZ='exit' ZQ='exit' q='exit' quit='exit'

# Misc
alias mkdir='mkdir -pv'
alias watch='watch -n 1'
alias doasedit='doas $EDITOR'
alias myip='curl ipinfo.io/ip && echo'
alias ex='7z e'
# alias code='codium'
alias codium='codium --enable-features=UseOzonePlatform --ozone-platform=wayland'
alias hx='helix'
alias mine='doas xmrig --threads=$(nproc)'
alias py='python3'
alias ni='nim'
alias clock='peaclock --colour=on --config-dir=$HOME/.config/peaclock/'
alias sudo='doas' # in case i paste commands
alias man='pdfman'
alias mouse='mousepad'
alias dog='bat --paging=never --color=never --decorations=never'
alias reboot='loginctl reboot'
alias poweroff='loginctl poweroff'

# Package Management
alias pacclean='paru -Rs $(paru -Qtdq)'

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty3 ]]; then exec startx; fi

afetch
