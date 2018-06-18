scriptencoding utf-8
set encoding=utf-8

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'flazz/vim-colorschemes'
Plugin 'mileszs/ack.vim'
Plugin 'vim-scripts/a.vim'

call vundle#end()
filetype plugin indent on 


"navigate splits
nnoremap <Space>k :wincmd k<CR>
nnoremap <Space><Up> :wincmd k<CR>
nnoremap <Space>j :wincmd j<CR>
nnoremap <Space><Down> :wincmd j<CR>
nnoremap <Space>h :wincmd h<CR>
nnoremap <Space><Left> :wincmd h<CR>
nnoremap <Space>l :wincmd l<CR>
nnoremap <Space><Right> :wincmd l<CR>

"don't use tabulators
set expandtab
set tabstop=4
set shiftwidth=4


"highlight bindings
nnoremap <Space>1 yiw :Highlight 1 <C-r>"<CR>
nnoremap <Space>2 yiw :Highlight 2 <C-r>"<CR>
nnoremap <Space>3 yiw :Highlight 3 <C-r>"<CR>
nnoremap <Space>4 yiw :Highlight 4 <C-r>"<CR>
nnoremap <Space>5 yiw :Highlight 5 <C-r>"<CR>
nnoremap <Space>6 yiw :Highlight 6 <C-r>"<CR>
nnoremap <Space>` yiw :Hclear <C-r>"<CR>
nnoremap <Space>~ yiw :Hclear *<CR>


"persistent undo
set undofile
set undodir=~/.vim/undodir

"status bar
set laststatus=2
set statusline=%f "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file

"clang-format.py
map <C-I> :pyf ~/.config/clang-format.py<cr>
imap <C-I> <c-o>:pyf ~/.config/clang-format.py<cr>


"search and open file
nnoremap <Space><Space> <C-w>gF
nnoremap <Space>t :tabe **/*
nnoremap <Space>e :e **/*
nnoremap <Space>x :tabclose<CR>
nnoremap <Space>s :A<CR>

set noautochdir


"NERDTree
nnoremap <space>n :NERDTreeTabsToggle <CR>
let g:NERDTreeQuitOnOpen = 0


"Search
nnoremap <Space>f yiw :Ack <C-r>" % <CR> :cope <CR>
nnoremap <Space>g yiw :Ack <C-r>" **/* <CR> :cope <CR>
nnoremap <Space>a :Ack 
nnoremap <space>d :noh <CR>


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
"set list
"set list lcs=trail:·,tab:»·


"navigate tabs
nnoremap <S-Left> gT
nnoremap <Space>i gT
nnoremap <S-Right> gt
nnoremap <Space>o gt
set switchbuf=usetab,newtab
set mouse=a


"airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#close_symbol = 0 
let g:airline#extensions#tabline#show_close_button = 0


