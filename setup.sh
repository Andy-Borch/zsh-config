#!/usr/bin/env bash
set -euo pipefail

if ! command -v brew >/dev/null 2>&1; then
  echo "Install Homebrew first: https://brew.sh"
  exit 1
fi

brew bundle --file=./Brewfile

if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

if [ ! -d "$HOME/.oh-my-zsh/custom/themes/powerlevel10k" ]; then
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$HOME/.oh-my-zsh/custom/themes/powerlevel10k"
fi

cp ./shell/.zshrc "$HOME/.zshrc"
cp ./shell/.zprofile "$HOME/.zprofile"
cp ./shell/.p10k.zsh "$HOME/.p10k.zsh"

echo "Shell config installed."
echo "For iTerm2:"
echo "  1) Open iTerm2 > Settings > General > Preferences and load ./iterm2/com.googlecode.iterm2.plist OR import profile/theme manually."
echo "  2) Import ./iterm2/everforest-dark.itermcolors in iTerm2 color presets."
