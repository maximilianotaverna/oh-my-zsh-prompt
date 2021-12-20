# Git branch in prompt.
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# My prompt
PS1="↪ %F{214}%*%F{015} %m%F{039}%d%F{015}$(parse_git_branch) > "
