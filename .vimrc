call plug#begin('$HOME/vimfiles/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'kien/ctrlp.vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'branch': 'release/0.x' }
Plug 'preservim/nerdcommenter'
Plug 'pangloss/vim-javascript'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'elzr/vim-json'
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
Plug 'jiangmiao/auto-pairs'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries'  }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
call plug#end()

colorscheme gruvbox

syntax enable
filetype indent on      
filetype plugin on     
filetype indent on

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
set noerrorbells visualbell t_vb=

" Configuration for COC
set hidden
set cmdheight=2
set updatetime=300
set shortmess+=c

inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>
nnoremap <C-s> :w<CR>
vnoremap <silent><C-s> <C-c>:update<cr>gv
inoremap <silent><C-s> <C-o>:update<cr>
nnoremap <C-q> :quit!<CR>
nnoremap <C-o> o<Esc>
inoremap jj <esc>
map <F8> ggVG
map <F3> :NERDTreeToggle<CR>

let mapleader=" "
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:prettier#autoformat = 0
let g:prettier#config#single_quote = 'true'
let g:prettier#config#trailing_comma = 'all'
let g:prettier#config#tab_width = '4'

autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync
