#!/bin/bash

rm $HOME/.vimrc
rm -rf $HOME/.vim

cp .vimrc $HOME/.vimrc
cp -R .vim $HOME
