#!/usr/bin/env bash

set -euo pipefail

cd "$DOTFILES_PATH" || exit


### --------- BREW --------- ###
brew services stop --all
brew bundle dump --file="$DOTFILES_PATH/os/mac/brew/Brewfile" --force
echo 'Brew Done! 👯‍'

### --------- PIP --------- ###
pip3 freeze >"$DOTFILES_PATH/langs/python/requirements.txt"
echo 'Pip3 Done! 👯‍'

### --------- NPM --------- ###
ls -1 /usr/local/lib/node_modules | grep npm >"$DOTFILES_PATH/langs/node/global_modules.txt"
echo 'Npm Done! 👯‍'

echo 'All Done! 👯‍'