#!/bin/sh

mkdir -p ~/.vim/colors
if [ -x "$(command -v wget)" ]; then
    echo 'wget'
elif [ -x "$(command -o curl)" ]; then
    echo 'curl'
else
    echo 'Error: Please install wget or curl;'
    exit 1
fi