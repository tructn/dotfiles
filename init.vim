call plug#begin('C:/Users/trucn/AppData/Local/nvim-data/plugged') 
Plug 'ryanoasis/vim-devicons'
Plug 'iCyMind/NeoSolarized'
Plug 'neoclide/coc.nvim'
Plug 'junegunn/vim-easy-align'
Plug 'fatih/vim-go', { 'tag': '*'  }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim'  }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'freeo/vim-kalisi'
Plug 'w0ng/vim-hybrid'
Plug 'bitterjug/vim-colors-bitterjug'
Plug 'jonathanfilip/vim-lucius'
Plug 'crusoexia/vim-monokai'
Plug 'jacoborus/tender.vim'
Plug 'pbrisbin/vim-colors-off'
Plug 'muellan/am-colors'
Plug 'blueshirts/darcula'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle'  }
Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh'  }
call plug#end()

set nocompatible
set vb t_vb=
set ts=4
set shiftwidth=4
set ai sw=4
set hlsearch
set number
set relativenumber
set nowrap
filetype on
filetype plugin on
filetype indent on

syntax on

let mapleader=";"

nnoremap <silent> <leader>ec :e $MYVIMRC<CR>
nnoremap <silent> <leader>sc :source $MYVIMRC<CR>
inoremap ;; <Esc>
nnoremap <silent> <Space> :NERDTreeToggle<CR>
nnoremap <C-s> :w!<CR>
nnoremap <C-q> :q!<CR>
