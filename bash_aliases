# Colorizing and setting aliases
# http://bitmote.com/index.php?post/2012/11/19/Using-ANSI-Color-Codes-to-Colorize-Your-Bash-Prompt-on-Linux
# To use 256 colors, prefix with \e[38;5;#m  (for bg \e[48;5;#m)

if [[ $OSTYPE == linux* ]]; then
    alias ls="ls --color"
    alias grep="grep --color=auto"
else
    alias ls="ls"
    export GREP_OPTIONS='--color=auto'
    export CLICOLOR=1
fi

alias ll="ls -lh"
alias la="ll -a"

alias rm="rm -i"

alias c='clear'
alias h='history'

export LSCOLORS=exfxdxDxcxhxhxhxhxExEx
export GREP_COLOR='1;38;5;136'

export EDITOR=vim
export VISUAL=vim

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\e[38;5;33m\]\h \[\e[38;5;64m\]\w\[\e[38;5;136m\]\$(parse_git_branch)\[\e[00m\] $ "
