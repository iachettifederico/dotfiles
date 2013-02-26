PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
source ~/.rvm/scripts/'rvm'

export TERM='xterm-256color'

alias ll='ls -alF'
alias la='ls -a'

export EDITOR="/usr/bin/emacs -nw"

alias gg='git log --color --all --graph --format="%C(yellow)%h%C(reset) %C(green)%d%Creset %s %C(blue)[%cN]%Creset"'

# Git prompt customization
function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "⚡"
}

function parse_git_branch {
  local branch=$(__git_ps1 "%s")
  [[ $branch ]] && echo "[$branch$(parse_git_dirty)]"
}

export PS1='\[\033[1;34m\]\w\[\033[0m\] $(parse_git_branch)$ '
