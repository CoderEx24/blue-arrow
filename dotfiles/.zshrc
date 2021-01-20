autoload -Uz promptinit compinit
promptinit
compinit

zstyle ':completion:*' menu select
prompt redhat

[ -f ~/.aliases ] && source ~/.aliases

