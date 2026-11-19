#!/usr/bin/env bash
# Install the restored vim config: backs up an existing ~/.vimrc,
# links this repo's .vimrc, installs vim-plug from the repo copy,
# then installs plugins.
set -euo pipefail
DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

if [ -e "$HOME/.vimrc" ] && [ ! -L "$HOME/.vimrc" ]; then
  mv "$HOME/.vimrc" "$HOME/.vimrc.bak.$(date +%Y%m%d%H%M%S)"
fi
ln -sfn "$DOTFILES/.vimrc" "$HOME/.vimrc"

mkdir -p "$HOME/.vim/autoload"
cp "$DOTFILES/vim/autoload/plug.vim" "$HOME/.vim/autoload/plug.vim"

vim -E -s -u "$HOME/.vimrc" +PlugInstall +qall || true
echo "vim config installed"
