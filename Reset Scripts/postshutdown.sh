#!/bin/bash
set -x

# Type echo $SHELL and verify the output.
# Output should be similar to /usr/bin/zsh
# https://stackoverflow.com/a/2013589/12347371
FOO="${ZSH_CUSTOM:=/home/appaji/.oh-my-zsh/custom}"
echo $ZSH_CUSTOM

# Install powerlevel10k
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
# Install these fonts
curl https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraMono/Regular/complete/Fura%20Mono%20Regular%20Nerd%20Font%20Complete.otf?raw=true --output "Fura Mono Regular Nerd Font Complete.otf"

curl https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraMono/Regular/complete/Fira%20Mono%20Regular%20Nerd%20Font%20Complete.otf?raw=true --output "Fira Mono Regular Nerd Font Complete.otf"


# Download plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

# Edit ~/.zshrc
# ZSH_THEME="powerlevel10k/powerlevel10k"
# POWERLEVEL9K_MODE="nerdfont-complete"
# ENABLE_CORRECTION="true"
# plugins=(git zsh-autosuggestions zsh-syntax-highlighting)


# Set Terminal font to FuraMono