#!/bin/bash

echo "Installing dependencies..."

echo "Setting up Zathura-pdf..."

sudo apt-get update -y

sudo apt-get install -y zathura

cp -rf $(pwd)/zathura/zathurarc ~/.config/zathura

echo "Setting up Vundle..."

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp -rf $(pwd)/vim/.vimrc ~

echo "Setting up neovim..."

sudo apt-get install -y neovim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

mkdir ~/.config/nvim

cp -rf $(pwd)/nvim/init.vim ~/.config/nvim

echo "Installing LaTeX, this may take a few minutes..."

sudo apt-get install -y texlive-full

nvim +PlugInstall +qall

nvim +PluginInstall +qall
