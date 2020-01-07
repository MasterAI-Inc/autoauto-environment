#!/bin/bash

set -e

cd "$(dirname "$0")"

cp bash/Dotbash_profile ~/.bash_profile
cat bash/Dotbashrc | sed "s|REPLACE_ROOT_DIR|$(pwd)|g" > ~/.bashrc
echo "Bash files installed..."

echo "source $(pwd)/vim/Dotvimrc" > ~/.vimrc
rm -rf ~/.vim
ln -s "$(pwd)/vim" ~/.vim
echo 'Vim files installed...'

