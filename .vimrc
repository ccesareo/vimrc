au FileType crontab setlocal bkc=yes

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
" vim +PluginInstall +qall"
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline.git'
Plugin 'airblade/vim-gitgutter.git'
Plugin 'tpope/vim-fugitive.git'
Plugin 'vim-syntastic/syntastic.git'
Plugin 'morhetz/gruvbox.git'
Plugin 'rakr/vim-one.git'
" Plugin 'tomasr/molokai.git'
Plugin 'hashivim/vim-hashicorp-tools.git'
Plugin 'glench/vim-jinja2-syntax'
Plugin 'haya14busa/incsearch.vim'
Plugin 'PProvost/vim-ps1.git'
Plugin 'jvirtanen/vim-hcl.git'
" Plugin 'https://github.com/davidhalter/jedi-vim.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

set expandtab
set tabstop=4
set autoindent
set softtabstop=4
set shiftwidth=4
set textwidth=119
set fileformat=unix
set nowrap
set updatetime=100
set nu
set bg=dark
set foldmethod=indent
set foldlevel=10
set scrolloff=5

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" gruvbox
colorscheme gruvbox
" colorscheme one
let g:airline_theme = 'gruvbox'
" let g:molokai_original = 1
let g:rehash256 = 1

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)

" split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
