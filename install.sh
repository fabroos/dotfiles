#!/bin/bash
#
#  ドットファイル - Dotfiles Installer
#

set -e

DOTFILES="$(cd "$(dirname "$0")" && pwd)"

echo ""
echo "  道 Installing dotfiles..."
echo ""

# ---- Symlinks ----
link() {
  local src="$1" dst="$2"
  if [ -e "$dst" ] || [ -L "$dst" ]; then
    echo "  [skip] $dst already exists (backup: ${dst}.bak)"
    mv "$dst" "${dst}.bak"
  fi
  ln -sf "$src" "$dst"
  echo "  [link] $src -> $dst"
}

# Zsh
link "$DOTFILES/zsh/.zshrc" "$HOME/.zshrc"
mkdir -p "$HOME/.zsh"
link "$DOTFILES/zsh/aliases.zsh" "$HOME/.zsh/aliases.zsh"

# Ghostty
mkdir -p "$HOME/Library/Application Support/com.mitchellh.ghostty"
link "$DOTFILES/ghostty/config" "$HOME/Library/Application Support/com.mitchellh.ghostty/config"

# Fastfetch
mkdir -p "$HOME/.config/fastfetch"
link "$DOTFILES/fastfetch/config.jsonc" "$HOME/.config/fastfetch/config.jsonc"

echo ""
echo "  ---- Dependencies ----"
echo ""

# Check for Homebrew
if ! command -v brew &>/dev/null; then
  echo "  [!] Homebrew not found. Install it first:"
  echo "      https://brew.sh"
  exit 1
fi

# Install dependencies
DEPS=(eza bat ripgrep fd dust btop git-delta zoxide zsh-autosuggestions zsh-syntax-highlighting fastfetch)

for dep in "${DEPS[@]}"; do
  if brew list "$dep" &>/dev/null; then
    echo "  [ok] $dep"
  else
    echo "  [install] $dep"
    brew install "$dep"
  fi
done

echo ""
echo "  鬼 Done. Restart your terminal."
echo ""
