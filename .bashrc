#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='\u@\h [\W]>'
# Custom bash prompt via kirsle.net/wizards/ps1.html
export PS1="\[$(tput bold)\]\[$(tput setaf 3)\]\u \[$(tput setaf 7)\]\h (\A)\[$(tput setaf 5)\][\W]\[$(tput setaf 7)\]>\[$(tput sgr0)\]"

#alias wine32='WINEARCH=win32 WINEPREFIX=~/wine32 wine'
#alias winecfg32='WINEARCH=win32 WINEPREFIX=~/wine32 winecfg'
#alias lp2sideh='lp -o job-hold-until=indefinite -o sides=two-sided-long-edge'
