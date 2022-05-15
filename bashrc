[[ $- != *i* ]] && return

GPG_TTY=`tty`
export GPG_TTY
export NEOVIDE_MULTIGRID=true

alias ls='exa'
alias ll='exa -l'
alias grep='rg'
alias cat='bat -p'
alias md='yt-dlp -f 'ba' -x --audio-format mp3'
alias wr='vim'
alias nv='nvim'
source $HOME/scripts/git-prompt.sh

PROMPT_COMMAND='__git_ps1 "\W" " \\\$ "'

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWCOLORHINTS=1

. "$HOME/.cargo/env"
export PATH="$PATH:$HOME/go/bin:$HOME/.local/bin"
complete -cf doas
