set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=$HOME/.local/lib/python3.5/site-packages/powerline/bindings/vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

call vundle#end()

filetype plugin indent on

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports it)
set t_Co=256

" Always show line numbers
set number

