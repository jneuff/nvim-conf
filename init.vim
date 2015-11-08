call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'tomasr/molokai'
Plug 'vim-pandoc/vim-pandoc'
Plug 'pgdouyon/vim-accio'
Plug 'bling/vim-airline'
Plug 'Valloric/YouCompleteMe'
Plug 'bfredl/nvim-ipy'

call plug#end()

" basic settings

syntax on
filetype plugin indent on
set encoding=utf-8
colorscheme molokai
set number
set cursorline

" search settings
set incsearch	" incremental search
set hlsearch	" highlight results
set ignorecase	" case insensitive
set smartcase	" unless query contains capitals

" Relative numbering
Function! NumberToggle()
  if(&relativenumber == 1)
    set nornu
    set number
  else
    set rnu
  endif
Endfunc

" Toggle between normal and relative numbering.
Nnoremap <leader>r :call NumberToggle()<cr>

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

map <silent> <C-n> :NERDTreeToggle<CR>

" ctrlp
nmap <leader>p :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>
