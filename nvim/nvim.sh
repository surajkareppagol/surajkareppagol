#!/bin/bash

VERSION=0.10.1

## Download nvim-linux64.tar.gz
echo -e "\033[1;32mnvim\033[0m: Downloading tar..."

mkdir -p ~/.local/

wget -q -nc -P ~/.local/ "https://github.com/neovim/neovim/releases/download/v$VERSION/nvim-linux64.tar.gz"

if [[ $? != 0 ]]
then
  echo "💥 Something went wrong."
  exit
fi

## Extract tar
echo -e "\033[1;32mnvim\033[0m: Extracting tar..."

tar -xzf ~/.local/nvim-linux64.tar.gz -C ~/.local/
rm ~/.local/nvim-linux64.tar.gz

## Linking binary
echo -e "\033[1;32mnvim\033[0m: Linking binary..."

ln -sf ~/.local/nvim-linux64/bin/nvim ~/.local/bin/

## Write the ~/.local/bin to PATH
CURRENT_SHELL=$(echo $SHELL | rev | cut -d"/" -f1 | rev)

if [[ $CURRENT_SHELL = "bash" ]]
then
  CONFIG=.bashrc
elif [[ $CURRENT_SHELL = "zsh" ]]
then
  CONFIG=.zshrc
elif [[ $CURRENT_SHELL = "fish" ]]
then
  CONFIG=.config/fish/config.fish
fi

echo 'export PATH="$PATH:~/.local/bin"' >> ~/$CONFIG
# exec $CURRENT_SHELL

## Add the config files
if test -d ~/.config/nvim
then
  mv ~/.config/nvim ~/.config/nvim.bak
fi

echo -e "\033[1;32mnvim\033[0m: Creating configs..."

cp -r nvim ~/.config/

echo -e "\n🚀 Nvim is ready to use!"
sleep 2

nvim