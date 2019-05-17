#!/bin/sh

mkdir -p ~/.vim/colors
if [ -x "$(command -v wget)" ]; then
    wget -q https://raw.githubusercontent.com/tormozzg/configs/master/256-grayvim.vim -O ~/.vim/colors/256-grayvim.vim
    echo 'Wget: Colors downloaded'
elif [ -x "$(command -o curl)" ]; then
    curl -s https://raw.githubusercontent.com/tormozzg/configs/master/256-grayvim.vim --output ~/.vim/colors/256-grayvim.vim
    echo 'Curl: Colors downloaded'
else
    echo 'Error: Please install wget or curl;'
    exit 1
fi

echo "set tabstop=2" >> ~/.vimrc
echo "set shiftwidth=2" >> ~/.vimrc
echo "set smarttab" >> ~/.vimrc
echo "set wrap" >> ~/.vimrc
echo "set ai" >> ~/.vimrc
echo "set cin" >> ~/.vimrc
echo "set showmatch" >> ~/.vimrc
echo "set hlsearch" >> ~/.vimrc
echo "set incsearch" >> ~/.vimrc
echo "set ignorecase" >> ~/.vimrc
echo "set number" >> ~/.vimrc
echo "syntax on" >> ~/.vimrc
echo "colorscheme 256-grayvim" >> ~/.vimrc
