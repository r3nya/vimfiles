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
Bundle 'tomasr/molokai'
Bundle 'Markdown' 
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-rails'
Bundle 'scrooloose/nerdtree'

filetype plugin indent on

colorscheme molokai
