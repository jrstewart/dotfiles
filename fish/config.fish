set -g -x fish_greeting ""

set -xU ERL_AFLAGS "-kernel shell_history enabled"

fish_add_path -a ~/.cargo/bin
fish_add_path -a ~/bin

export AWS_DEFAULT_REGION=us-east-1
export AWS_PAGER=""
export CHROME_EXECUTABLE="google-chrome-stable"

# System aliases
alias grep="rg"
alias ls="exa --icons"
alias ll="exa -l --icons"

# Ruby aliases
alias b="bundle"
alias be="bundle exec"

# Tmux aliases
alias tma="tmux attach -t"
alias tml="tmux ls"
alias tmn="tmux new -s"

# Docker aliases
alias dcb="docker-compose build"
alias dcr="docker-compose run"
alias dcs="docker-compose start"
alias dcp="docker-compose stop"
alias dcu="docker-compose up"
alias dcl="docker-compose logs"

source ~/.asdf/asdf.fish

direnv hook fish | source
