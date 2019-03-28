#!/bin/sh
set -e

echo "=== Installing..."

if [[ -e $HOME/.bash_profile || -e $HOME/.aliases ]]; then
  echo "Error: Either ~/.bash_profile or ~/.aliases already exists."
  echo "Move the files and then try again."
  exit 1
fi

if [[ -e $HOME/.git-authors ]]; then
  echo "Error: ~/.git-authors already exists."
  echo "Move the files and then try again."
  exit 1
fi

echo "=== Creating symbolic links for bash profile and aliases"
ln -s $PWD/bash_profile $HOME/.bash_profile
ln -s $PWD/aliases $HOME/.aliases
ln -s $PWD/git-authors $HOME/.git-authors

echo "=== Installation Successful"
