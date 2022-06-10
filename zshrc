eval "$(starship init zsh)"

if [ "$(command -v exa)" ]; then
    alias ls='exa -G  --color auto --icons -a -s type'
    alias ll='exa -l --color always --icons -a -s type'
fi

if [ "$(command -v bat)" ]; then
  alias cat='bat -pp --theme="OneHalfDark"'
fi

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

alias code='code-insiders'

source ~/.zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

ssh-add --apple-load-keychain > /dev/null 2>&1
