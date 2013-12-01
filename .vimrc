syntax on
set number

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" maps
map <F2> :NERDTreeToggle<CR>

" let Vundle manage Vundle
" required!
Bundle 'Markdown' 
Bundle 'gmarik/vundle'
Bundle 'jnurmine/Zenburn'
Bundle 'tpope/vim-rails'
Bundle 'wincent/Command-T'
Bundle 'scrooloose/nerdtree'

filetype plugin indent on

colorscheme zenburn

