#!/bin/bash

# Define the source and destination directories
SOURCE_DIR="$HOME/.config/nvim"
DEST_DIR="$HOME/dotfiles/.config/nvim"

# Delete the destination directory if it exists
if [ -d "$DEST_DIR" ]; then
	echo "Deleting $DEST_DIR"
	rm -rf "$DEST_DIR"
fi

# Copy the source directory to the destination
echo "Copying $SOURCE_DIR to $HOME/dotfiles/.config"
mkdir -p "$HOME/dotfiles/.config"
cp -r "$SOURCE_DIR" "$HOME/dotfiles/.config"

echo "Sync complete!"

# make script executable using chmod +x ~/.config/nvim/sync_nvim.sh
