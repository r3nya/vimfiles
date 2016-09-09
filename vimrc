" == Editor settings ==
syntax enable

if &history < 1000
  set history=1000
endif

set t_Co=256 " Enable 256 colors

" Store swap files in to fixed location
set noswapfile
set directory=/var/tmp//,/tmp//,.

" Store backup files in to fixed location
set nobackup
set backupdir=/var/tmp//,/tmp//,.

set fileencodings=utf8 " Supported file encodings

set number " Disable line numbers

set ruler " Always display cursor position

" == Plugins ==
call plug#begin()

try
  source ~/.vimrc.plugs
catch
endtry

call plug#end()

" == scrooloose/syntastic ==
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_jump = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']

" == mxw/vim-jsx ==
let g:jsx_ext_required = 0

" === Keybindings ===

" == junegunn/fzf ==
nnoremap <C-T> :FZF<CR>
inoremap <C-T> <ESC>:FZF<CR>i

" == scrooloose/nerdtree ==
nnoremap <C-\> :NERDTreeToggle<CR>
inoremap <C-\> <ESC>:NERDTreeToggle<CR>
