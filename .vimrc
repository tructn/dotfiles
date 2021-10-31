call plug#begin('$HOME/vimfiles/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'kien/ctrlp.vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'branch': 'release/0.x' }
Plug 'preservim/nerdcommenter'
Plug 'pangloss/vim-javascript'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'elzr/vim-json'
Plug 'jparise/vim-graphql'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries'  }
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
Plug 'rust-lang/rust.vim'
Plug 'dracula/vim', { 'as': 'dracula'  }
Plug 'vim-airline/vim-airline'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

set background=dark
let g:palenight_terminal_italics=1
let g:airline_theme = "palenight"
colorscheme palenight
if (has("termguicolors"))
  set termguicolors
endif

xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

let g:coc_start_at_startup = 1
let g:coc_global_extensions = [
  \'coc-json',
  \'coc-css',
  \'coc-ultisnips',
  \'coc-tsserver',
  \'coc-emmet',
  \'coc-tag',
  \'coc-omni',
  \'coc-syntax',
  \'coc-yaml',
  \'coc-solargraph',
  \'coc-phpls',
  \'coc-html',
  \'coc-tailwindcss',
  \'coc-markdownlint',
  \'coc-git'
\]

syntax enable
filetype indent on      
filetype plugin on     
filetype indent on
set termguicolors
set noeb vb t_vb=
set noerrorbells
set visualbell
set t_vb=
set termguicolors
set nowrap
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab       	
set number          
set showcmd        
set wildmenu      
set lazyredraw   
set showmatch   
set incsearch  
set hlsearch  
set noswapfile
set backspace=indent,eol,start
set encoding=UTF-8

let mapleader=","       

nnoremap j gj
nnoremap k gk

nnoremap B ^
nnoremap E $

nnoremap $ <nop>
nnoremap ^ <nop>
nnoremap gV `[v`]

inoremap jj <esc>

nnoremap <leader>a :Ag
nnoremap <C-s> :w<CR>
vnoremap <silent><C-s> <C-c>:update<cr>gv
inoremap <silent><C-s> <C-o>:update<cr>
nnoremap <C-q> :quit!<CR>
nnoremap <C-o> o<Esc>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

map <F8> ggVG
map <F3> :NERDTreeToggle<CR>

let g:prettier#autoformat = 0
let g:prettier#config#single_quote = 'true'
let g:prettier#config#trailing_comma = 'all'
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync



