set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'elzr/vim-json'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'fatih/vim-go'
Plugin 'cespare/vim-toml'
Plugin 'w0rp/ale'
Plugin 'chrisbra/csv.vim'
Plugin 'hashivim/vim-terraform'
Plugin 'eslint/eslint'
Plugin 'maxmellon/vim-jsx-pretty'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:ale_fix_on_save = 1

" To ignore plugin indent changes, instead use:
"filetype plugin on
" Put your non-Plugin stuff after this line

set smartindent
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set number
set backupcopy=yes
syntax on

set rtp+=/usr/local/opt/fzf
