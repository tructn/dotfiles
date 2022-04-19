call plug#begin('C:/Users/trucn/AppData/Local/nvim-data/plugged') 
Plug 'ryanoasis/vim-devicons'
Plug 'iCyMind/NeoSolarized'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
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
Plug 'jiangmiao/auto-pairs'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
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
inoremap jj <Esc>
nnoremap <silent> <Space> :NERDTreeToggle<CR>
nnoremap <C-s> :w!<CR>
inoremap <C-s> <Esc>:w!<CR>
nnoremap <C-q> :q!<CR>

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

inoremap <silent><expr> <Tab>
	\ pumvisible() ? "\<C-n>" :
	\ coc#refresh()

