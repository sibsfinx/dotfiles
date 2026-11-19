#!/usr/bin/env bash
# Install the LazyVim config: links this repo's nvim/ to ~/.config/nvim
# (backing up an existing one), then installs plugins and tools.
# Your ~/.vimrc is not touched, so plain `vim` keeps the classic config.
set -euo pipefail
DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CFG="${XDG_CONFIG_HOME:-$HOME/.config}/nvim"

command -v nvim >/dev/null || { echo "install neovim first: brew install neovim"; exit 1; }
mkdir -p "$(dirname "$CFG")"
if [ -e "$CFG" ] && [ ! -L "$CFG" ]; then
  mv "$CFG" "$CFG.bak.$(date +%Y%m%d%H%M%S)"
fi
ln -sfn "$DOTFILES/nvim" "$CFG"

nvim --headless "+Lazy! restore" +qa
echo "nvim config installed. Open nvim once to let Mason install the language servers."
