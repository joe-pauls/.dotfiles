# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .nanorc
This is my custom .nanorc configuration for Nano.
## .bashrc
This is my custom .bashrc configuration for Bash.
## etc/bashrc_custom
This is another custom configuration for Bash.
## bin/linux.sh
This script sets up a Linux environment by:
- Checking if the operating system is Linux.
- Creating a `.TRASH` directory in the home directory if it doesn't already exist.
- Renaming an existing `.nanorc` file to `.bup nanorc` and logging the change.
- Overwriting the contents of `/etc/nanorc` into a new `.nanorc` file in the home directory.
- Adding a custom source line (`source ~/.dotfiles/etc/bashrc custom`) to the `.bashrc` file.
## bin/cleanup.sh
This script reverses the changes made by `linux.sh` by:
- Removing the `.nanorc` file from the home directory.
- Deleting the custom source line from the `.bashrc` file.
- Removing the `.TRASH` directory from the home directory.
## Makefile
This makefile has two targets, linux and clean, and will run linux.sh or cleanup.sh
