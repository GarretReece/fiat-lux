export CLICOLOR=1
export GREP_OPTIONS='--color=auto'
# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[0143m\]\W\[\033m\]\[\033[32m\]\$(parse_git_branch)\[\033[00m\]\$ "
