#!/bin/bash

# Set the source and destination directories
SOURCE_DIR="$(pwd)"
DEST_DIR="$HOME/.config/nvim"

# Create destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Copy the contents, preserving structure and hidden files
rsync -av --progress "$SOURCE_DIR/" "$DEST_DIR/"

echo "Neovim configs copied from $SOURCE_DIR to $DEST_DIR"
