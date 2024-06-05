#!/bin/bash

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh) --unattended"

if [[ $? -ne 0 ]]; then
  echo "Failed to install oh-my-zsh"
  exit 1
fi

cp templates/.zshrc ~/.zshrc
cp templates/container.zsh-theme ~/.oh-my-zsh/custom/themes/container.zsh-theme

cd ~/.oh-my-zsh/custom/plugins || exit 1
git clone https://github.com/cedi/meaningful-error-codes.git
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone https://github.com/zsh-users/zsh-autosuggestions.git
