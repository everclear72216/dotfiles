set rtp+=$HOME/.local/lib/python3.5/site-packages/powerline/bindings/vim
set rtp+=$HOME/.vim/bundle/nerdtree

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports it)
set t_Co=256

" Always show line numbers
set number

" Open NERDTree when opening a directory
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0]
