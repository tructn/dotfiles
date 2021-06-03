if empty(glob('$HOME/vimfiles/autoload/plug.vim'))
  silent !curl -fLo $HOME/vimfiles/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('$HOME/vimfiles/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
Plug 'epilande/vim-es2015-snippets'
Plug 'epilande/vim-react-snippets'
Plug 'vim-airline/vim-airline'
Plug 'leafgarland/typescript-vim'
Plug 'kien/ctrlp.vim'
Plug 'voronkovich/ctrlp-nerdtree.vim'
Plug 'tmux-plugins/vim-tmux'
Plug 'flowtype/vim-flow'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'terryma/vim-multiple-cursors'
Plug 'ryanoasis/vim-devicons'
Plug 'pangloss/vim-javascript'
Plug 'crusoexia/vim-javascript-lib'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'jparise/vim-graphql'
Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'branch': 'release/0.x' }
Plug 'jcherven/jummidark.vim'
Plug 'arzg/vim-colors-xcode'
call plug#end()

filetype indent on      " load filetype-specific indent files

syntax enable
colorscheme xcodedarkhc

augroup vim-colors-xcode
  autocmd!
augroup END

autocmd vim-colors-xcode ColorScheme * hi Comment        cterm=italic gui=italic
autocmd vim-colors-xcode ColorScheme * hi SpecialComment cterm=italic gui=italic

set termguicolors
set nowrap
set tabstop=2       	" number of visual spaces per TAB
set softtabstop=2   	" number of spaces in tab when editing
set expandtab       	" tabs are spaces
set number          	" show line numbers
set showcmd         	" show command in bottom bar
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set noswapfile
set backspace=indent,eol,start
set encoding=UTF-8
set expandtab
set shiftwidth=2
set softtabstop=2

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

" highlight last inserted text
nnoremap gV `[v`]

let mapleader=","       " leader is comma

" jk is escape
inoremap jk <esc>

" open ag.vim
nnoremap <leader>a :Ag

" save session
nnoremap <C-s> :w<CR>
vnoremap <silent><C-s> <C-c>:update<cr>gv
inoremap <silent><C-s> <C-o>:update<cr>

" quit session
nnoremap <C-q> :quit!<CR>

" insert new line
nnoremap <C-o> o<Esc>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

map <F8> ggVG
map <C-S-l> :Prettier<CR>
map <F3> :NERDTreeToggle<CR>
map <F12> :ALEGoToDefinition<CR>

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync
