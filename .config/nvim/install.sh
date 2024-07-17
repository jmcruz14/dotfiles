#!/bin/bash

SOURCE_DIR="$HOME/dotfiles/.config/nvim"
DEST_DIR="$HOME/.config/nvim"

# Check if the current directory is the dotfiles directory
if [[ "$(pwd)" != "$SOURCE_DIR" ]]; then
  echo "This script must be run from the dotfiles/.config/nvim directory!"
  exit 1
fi

echo "Installing neovim into $DEST_DIR"
cp -r "$SOURCE_DIR" "$DEST_DIR"

echo "Neovim has been installed!"
