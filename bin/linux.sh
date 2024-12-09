#!/bin/bash

# Check if the operating system is Linux
if [ "$(uname)" != "Linux" ]; then
  # dump an error message to linxsetup.log
  echo "Error: This script is only for Linux systems." >> linuxsetup.log
  exit 1
fi

# Create the .TRASH directory home directory if it doesn't already exist
if [ ! -d "$HOME/.TRASH" ]; then
  mkdir "$HOME/.TRASH"
fi

# Check if .nanorc exists and rename it if it does
if [ -f "$HOME/.nanorc" ]; then
  mv "$HOME/.nanorc" "$HOME/.bup_nanorc"
  echo "The current .nanorc file was renamed to .bup_nanorc." >> linuxsetup.log
fi

# Overwrite the contents of etc/nanorc to ~/.nanorc
cat etc/nanorc > "$HOME/.nanorc"

# Add a source line to the end of .bashrc
echo "source ~/.dotfiles/etc/bashrc_custom" >> "$HOME/.bashrc"
