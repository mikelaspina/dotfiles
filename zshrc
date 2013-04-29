# .zshrc
#
# 

PROMPT='[%n@%m %1~]%# '
RPROMPT=

autoload -U compinit colors
compinit
colors

# Customize directory listings
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
alias ls="ls -GFh"

if [[ $( uname -s ) == 'Darwin' ]]; then
  alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw"
fi

export EDITOR=emacs
export PATH=$PATH:/usr/local/go/bin

# Aliases
alias ll="ls -l"

# Load RVM into a shell session *as a function*
[[ -s "/Users/Mike/.rvm/scripts/rvm" ]] && source "/Users/Mike/.rvm/scripts/rvm" 
