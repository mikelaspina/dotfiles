# -*- mode: shell-script; coding: utf-8; fill-column: 78; -*-

#
# Common ZSH customizations that should always be enabled.
#
# Author: Mike LaSpina
#

PROMPT='[%n@%m %1~]%# '
RPROMPT=

autoload -U compinit colors
compinit
colors

OS=$( uname -s )

case "$OS" in
  'Darwin'|'FreeBSD')
    export CLICOLOR=1
    ;;
esac

#
# Aliases
#

alias la="ls -lAh"
alias ll="ls -lh"
alias lsa="ls -lah"

alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"

if [[ 'Darwin' == "$OS" ]]; then
  if [[ -x /Applications/Emacs.app/Contents/MacOS/Emacs ]]; then
    alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw"
  fi
fi
