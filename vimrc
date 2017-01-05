set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'flazz/vim-colorschemes'
Plugin 'Valloric/YouCompleteMe'
Plugin 'mileszs/ack.vim'

call vundle#end()
filetype plugin indent on 


"navigate splits
nnoremap <Space><Up> :wincmd k<CR>
nnoremap <Space><Down> :wincmd j<CR>
nnoremap <Space><Left> :wincmd h<CR>
nnoremap <Space><Right> :wincmd l<CR>

"don't use tabulators
set expandtab
set tabstop=4
set shiftwidth=4

"clang-format.py
map <C-I> :pyf ~/.config/clang-format.py<cr>
imap <C-I> <c-o>:pyf ~/.config/clang-format.py<cr>


"search and open file
nnoremap <Space><Space> <C-w>gF
nnoremap <Space>t :tabe **/*
nnoremap <Space>e :e **/*
nnoremap <Space>x :tabclose<CR>

set noautochdir


"NERDTree
nnoremap <space>n :NERDTreeTabsToggle <CR>
let g:NERDTreeQuitOnOpen = 0


"Search
nnoremap <Space>f yiw :Ack <C-r>" % <CR> :cope <CR>
nnoremap <Space>h yiw :Ack <C-r>" **/* <CR> :cope <CR>
nnoremap <Space>a :Ack 
nnoremap <space>l :noh <CR>


"appearance
set hlsearch
set cursorline
set number
syntax on
color ir_black
hi Comment ctermfg=darkmagenta

hi Search cterm=NONE ctermfg=black ctermbg=yellow
autocmd VimEnter * set nospell


"trailing whitespaces
set list
set list lcs=trail:·,tab:»·


"navigate tabs
nnoremap <S-Left> gT
nnoremap <S-Right> gt
set switchbuf=usetab,newtab
set mouse=v


"airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#close_symbol = '×'
let g:airline#extensions#tabline#show_close_button = 0


