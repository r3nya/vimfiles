syntax on
set number

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" maps
map <C-n> :NERDTreeToggle<CR>

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-rails.git'
Bundle 'scrooloose/nerdtree.git'
