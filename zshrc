eval "$(starship init zsh)"

if [ "$(command -v exa)" ]; then
    unalias -m 'll'
    unalias -m 'l'
    unalias -m 'la'
    unalias -m 'ls'
    alias ls='exa -G  --color auto --icons -a -s type'
    alias ll='exa -l --color always --icons -a -s type'
fi

if [ "$(command -v bat)" ]; then
  unalias -m 'cat'
  alias cat='bat -pp --theme="OneHalfDark"'
fi

# In Debian bat is actually installed as 'batcat' command
if [ "$(command -v batcat)" ]; then
  unalias -m 'cat'
  alias cat='batcat -pp --theme="OneHalfDark"'
fi

alias code='code-insiders'

source ~/.zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
