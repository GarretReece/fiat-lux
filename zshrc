# -*- coding: utf-8 -*-

setopt PROMPT_SUBST
function parse_git_branch { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/' }
export PROMPT='%(?.%F{green}✓.%F{red}✗%?)%f %B%F{green}%n@%m%f%b:%1~%F{green}$(parse_git_branch)%f%# '
export PATH=$PATH:~/bin
export CLICOLOR=1
autoload -Uz compinit && compinit
