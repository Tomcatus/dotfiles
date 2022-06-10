# #!/usr/bin/env bash

# Install ZSH syntax highlighting
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting $HOME/.zsh/fast-syntax-highlighting

# Update debian and install dependencies
if command -v apt-get &> /dev/null; then
  sudo apt-get update
  sudo apt-get install -y bat exa delta
fi

# Install starship prompt
curl -fsSL https://starship.rs/install.sh | sh -s -- --yes

# Copy needed files
cp ~/dotfiles/zshrc ~/.zshrc
mkdir -p /.config
cp ~/dotfiles/starship.toml ~/.config/starship.toml
