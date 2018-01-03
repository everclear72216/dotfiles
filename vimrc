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

" Use Tab instead of Escape
nnoremap <Tab> <Esc>
vnoremap <Tab> <Esc>gV
onoremap <Tab> <Esc>
cnoremap <Tab> <C-C><Esc>
inoremap <Tab> <Esc>
inoremap <Leader><Tab> <Tab>

" Highlight overlength lines
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
