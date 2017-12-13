#! /bin/bash

rm -f ~/.zshrc
ln -sf $(pwd)/zshrc ~/.zshrc
rm -f ~/.vimrc
ln -sf $(pwd)/vimrc ~/.vimrc
rm -rf ~/.vim
ln -sf $(pwd)/vim ~/.vim
rm -f ~/.profile
ln -sf $(pwd)/profile ~/.profile
rm -f ~/.tmumx.comf
ln -sf $(pwd)/tmux.conf ~/.tmux.conf
