call plug#begin('$HOME/vimfiles/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'pangloss/vim-javascript'
Plug 'mattn/emmet-vim'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'jparise/vim-graphql'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
Plug 'leafgarland/typescript-vim'
Plug 'kien/ctrlp.vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'branch': 'release/0.x' }
Plug 'preservim/nerdcommenter'
Plug 'rust-lang/rust.vim'
Plug 'pangloss/vim-javascript'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'elzr/vim-json'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rakr/vim-one'
Plug 'jiangmiao/auto-pairs'
call plug#end()

colorscheme one

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-@> coc#refresh()

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
if (index(['vim','help'], &filetype) >= 0)
  execute 'h '.expand('<cword>')
elseif (coc#rpc#ready())
  call CocActionAsync('doHover')
else
  execute '!' . &keywordprg . " " . expand('<cword>')
endif
endfunction

xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

filetype indent on      
filetype plugin on     
syntax enable
set termguicolors
set noeb vb t_vb=
set noerrorbells
set termguicolors
set nowrap
set tabstop=4
set softtabstop=4
set shiftwidth=4
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
map <F12> :ALEGoToDefinition<CR>

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"
