#!/usr/bin/env bash
# desc: Neovim config
set -e

NVIM_REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
NVIM_CONFIG_DIR="$HOME/.config/nvim"

# Only these are actually used by Neovim at runtime
ITEMS=("init.lua" "lsp" "lua")

echo "Setting up Neovim config..."

if [ -e "$NVIM_CONFIG_DIR" ] && [ ! -L "$NVIM_CONFIG_DIR" ]; then
  echo "Error: $NVIM_CONFIG_DIR exists and is not a symlink. Back it up or remove it first."
  exit 1
fi

mkdir -p "$NVIM_CONFIG_DIR"

for item in "${ITEMS[@]}"; do
  target="$NVIM_REPO_DIR/$item"
  link="$NVIM_CONFIG_DIR/$item"

  if [ ! -e "$target" ]; then
    echo "Warning: $target not found, skipping."
    continue
  fi

  echo "Linking $item..."
  ln -sf "$target" "$link"
done

echo "Neovim config setup complete."
