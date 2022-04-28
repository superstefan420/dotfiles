[[ $- != *i* ]] && return

alias ls='ls --color=auto'

source $HOME/scripts/git-prompt.sh

PROMPT_COMMAND='__git_ps1 "\W" " \\\$ "'

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWCOLORHINTS=1

. "$HOME/.cargo/env"
export PATH="$PATH:$HOME/go/bin"
complete -cf doas
