filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

set nocompatible
let Tlist_GainFocus_On_ToggleOpen = 1
set modelines=0
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

let mapleader = ","
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=90
set tags=/Users/wjkeller/Sites/timeclock/tags
nnoremap j gj
nnoremap k gk

"au FocusLost * :wa

colorscheme molokai

filetype plugin on
set ofu=syntaxcomplete#Complete


set tags=~/Sites/timeclock/tags

nnoremap <silent> <F1> :NERDTreeToggle<CR>
nnoremap <silent> <F2> :TlistToggle<CR>
let CSCommandMapPrefix = '<leader>b'


nmap <silent> <leader>sv :so $MYVIMRC<CR>
nmap <silent> <leader>ev :e  $MYVIMRC<CR>

function! MarkWindowSwap()
    let g:markedWinNum = winnr()
endfunction

function! DoWindowSwap()
    "Mark destination
    let curNum = winnr()
    let curBuf = bufnr( "%" )
    exe g:markedWinNum . "wincmd w"
    "Switch to source and shuffle dest->source
    let markedBuf = bufnr( "%" )
    "Hide and open so that we aren't prompted and keep history
    exe 'hide buf' curBuf
    "Switch to dest and shuffle source->dest
    exe curNum . "wincmd w"
    "Hide and open so that we aren't prompted and keep history
    exe 'hide buf' markedBuf
endfunction

nmap <silent> <leader>mw :call MarkWindowSwap()<CR>
nmap <silent> <leader>pw :call DoWindowSwap()<CR>


au BufWinLeave *.* mkview
au BufWinEnter *.* silent loadview
nmap <SPACE> <SPACE>:noh<CR>


set nocp
filetype plugin on

inoremap <silent> jj <esc>

nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap ; :
nnoremap <leader>v V`]
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
set textwidth=0

set nowrap
