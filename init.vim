" plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'tomasr/molokai'
Plug 'vim-pandoc/vim-pandoc'
Plug 'pgdouyon/vim-accio'
Plug 'bling/vim-airline'
Plug 'Valloric/YouCompleteMe'
Plug 'bfredl/nvim-ipy'
Plug 'rking/ag.vim'

call plug#end()

" basic settings
syntax on
filetype plugin indent on
set encoding=utf-8
colorscheme molokai
set number
set cursorline

" tabs and spaces
set tabstop=4		" visual spaces per tab
set softtabstop=4	" number of inserted spaces per tab
set shiftwidth=4    " indent size
set expandtab		" tabs are spaces

" for c
autocmd Filetype c setlocal ts=2 sts=2 sw=2

" search settings
set incsearch	" incremental search
set hlsearch	" highlight results
set ignorecase	" case insensitive
set smartcase	" unless query contains capitals

" movement
nnoremap j gj   " move vertically by visual line
nnoremap k gk

" Relative numbering
function! NumberToggle()
  if(&relativenumber == 1)
    set nornu
    set number
  else
    set rnu
  endif
endfunc

" Toggle between normal and relative numbering.
nnoremap <leader>r :call NumberToggle()<cr>

inoremap jj <ESC>
let mapleader="\<Space>"

" airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
" let g:airline_powerline_fonts = 1

" ***
" files and buffers
" ***
set hidden

" nerdtree
map <silent> <C-n> :NERDTreeToggle<CR>

" ctrlp
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'   " use ag
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
nmap <leader>p :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>

" open ag.vim
nnoremap <leader>a :Ag
