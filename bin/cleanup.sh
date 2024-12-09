#!/bin/bash

# Remove the .nanorc file in home directory
if [ -f "$HOME/.nanorc" ]; then
  rm "$HOME/.nanorc"
fi

# Remove the source ~/.dotfiles/etc/bashrc custom line from .bashrc
if [ -f "$HOME/.bashrc" ]; then
  sed -i 'source ~/.dotfiles/etc/bashrc_custom' "$HOME/.bashrc"
fi

# Remove the .TRASH directory in the home directory
if [ -d "$HOME/.TRASH" ]; then
  rm -r "$HOME/.TRASH"
fi
