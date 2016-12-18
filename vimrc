" == Plugins ==
call plug#begin()

try
  source ~/.vimrc.plugs
catch
endtry

call plug#end()


" == Editor settings ==
syntax enable

set colorcolumn=100

if &history < 1000
  set history=1000
endif

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/\.git/*,*/node_modules/*

set t_Co=256 " Enable 256 colors

"colorscheme oceanicnext
colorscheme spacegray
set background=dark

" enable to highlight invisible characters
setlocal list
setlocal listchars=tab:\|\ ,trail:·

" Indents
set autoindent
set smartindent

" Store swap files in to fixed location
set noswapfile
set directory=/var/tmp//,/tmp//,.

" Store backup files in to fixed location
set nobackup
set backupdir=/var/tmp//,/tmp//,.

set fileencodings=utf8 " Supported file encodings

set number relativenumber " Enable line numbers

set ruler " Always display cursor position

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" == ap/vim-buftabline ==
set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

" == sheerun/vim-polyglot ==
let g:polyglot_disabled = ['blade', 'elixir', 'glsl', 'kotlin', 'vala', 'vbnet']

" == jlanzarotta/bufexplorer ==
nmap <F12> <Esc>:BufExplorer<cr>
vmap <F12> <esc>:BufExplorer<cr>
imap <F12> <esc>:BufExplorer<cr>

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

" == junegunn/fzf ==
nnoremap <C-T> :FZF<CR>
inoremap <C-T> <ESC>:FZF<CR>i

" == itchyny/lightline.vim ==
let g:lightline = {
  \ 'colorscheme': 'seoul256',
  \ }
set laststatus=2

" == scrooloose/nerdtree ==
nnoremap <C-\> :NERDTreeToggle<CR>
inoremap <C-\> <ESC>:NERDTreeToggle<CR>

let NERDTreeIgnore = ['\.py[co]$', '__pycache__', 'node_modules']
let NERDTreeShowHidden=1

" == mhartington/oceanic-next ==
" enable italics, disabled by default
"let g:oceanic_next_terminal_italic = 1
" enable bold, disabled by default
"let g:oceanic_next_terminal_bold = 1

" == ajh17/spacegray.vim ==
let g:spacegray_italicize_comments = 1
let g:spacegray_underline_search = 1

" == mbbill/undotree ==
nnoremap <F5> :UndotreeToggle<cr>

if has("persistent_undo")
  set undodir=~/.undodir/
  set undofile
endif

" == ryanoasis/vim-devicons ==
" set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11

" == Key mapping ==
" easy navigation between splits
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l
nnoremap <C-h> <C-W>h

" Fast tab switch
nnoremap <silent> <Leader>1 1gt<cr>
nnoremap <silent> <Leader>2 2gt<cr>
nnoremap <silent> <Leader>3 3gt<cr>
nnoremap <silent> <Leader>4 4gt<cr>
nnoremap <silent> <Leader>5 5gt<cr>
nnoremap <silent> <Leader>6 6gt<cr>
nnoremap <silent> <Leader>7 7gt<cr>
nnoremap <silent> <Leader>8 8gt<cr>
nnoremap <silent> <Leader>9 9gt<cr>
