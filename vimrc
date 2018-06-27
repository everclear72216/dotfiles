set nocompatible
filetype off

syntax on

set rtp+=$HOME/.local/lib/python3.6/site-packages/powerline/bindings/vim

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports it)
set t_Co=256

" Always show line numbers
set number

" Highlight overlength lines
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%121v.\+/
