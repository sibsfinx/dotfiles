" Restored from the 2020 Vundle-based .vimrc in this repo's history,
" ported to vim-plug and trimmed of plugins that are dead or need
" compiled helpers. Leader is "," (as in 2020); \ is still Vim's default
" if you remove the mapleader line.

set nocompatible

let mapleader = ","

" ---------------------------------------------------------------- plugins
" vim-plug lives in ~/.vim/autoload/plug.vim (install/vim.sh copies it)
call plug#begin('~/.vim/plugged')

" editing
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-endwise'
Plug 'godlygeek/tabular'
Plug 'ervandew/supertab'
Plug 'editorconfig/editorconfig-vim'

" navigation / tools
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'preservim/tagbar'
Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-dispatch'

" looks
Plug 'vim-airline/vim-airline'
Plug 'nanotech/jellybeans.vim'

" languages: polyglot covers js/jsx/json/markdown/haml/slim/ruby/go/rust/
" yaml/csv/docker/coffee/... that were separate plugins before
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'

call plug#end()

syntax on
filetype plugin indent on

" ---------------------------------------------------------------- settings
set history=500
set backspace=eol,start,indent
set wildmenu
set visualbell
set mouse=a
set lazyredraw
set cursorline
set hidden
set nofoldenable
set nowrap
set number
set laststatus=2
set showmatch
set hlsearch
set ignorecase
set smartcase

set nobackup
set nowritebackup
set noswapfile

set autoindent
set tabstop=4
set shiftwidth=4
set expandtab

set t_Co=256
silent! colorscheme jellybeans

" system clipboard (macOS uses "unnamed", Linux "unnamedplus")
if has('clipboard')
  set clipboard^=unnamed,unnamedplus
endif

" persistent undo
if has('persistent_undo')
  let s:undodir = expand('~/.vim/undo')
  if !isdirectory(s:undodir) | call mkdir(s:undodir, 'p', 0700) | endif
  let &undodir = s:undodir
  set undofile
endif

augroup sibsfinx_filetypes
  autocmd!
  " treat foo-bar as one word in web files
  autocmd FileType css,sass,scss,less,stylus,html,haml,slim,eruby,coffee,javascript,javascriptreact,hbs setlocal iskeyword+=-
  autocmd BufRead,BufNewFile {Vagrantfile,Gemfile,Capfile} set filetype=ruby
  autocmd BufRead,BufNewFile *.hamlc set filetype=haml
  " strip trailing whitespace on save
  autocmd BufWritePre * :%s/\s\+$//e
augroup END

let g:vim_json_syntax_conceal = 0
let g:vim_markdown_folding_disabled = 1
let g:buffergator_viewport_split_policy = "B"
let g:buffergator_sort_regime = "mru"
let NERDTreeIgnore = ['\.pyc$']

" :Ack uses ripgrep or the silver searcher when installed
if executable('rg')
  let g:ackprg = 'rg --vimgrep --smart-case'
elseif executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" ---------------------------------------------------------------- mappings
nmap <F8> :TagbarToggle<CR>
nnoremap <F5> :UndotreeToggle<CR>

" Ctrl-h/j/k/l to move between splits
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

" F4 toggles paste mode
nmap <silent> <F4> :set invpaste<CR>:set paste?<CR>
imap <silent> <F4> <ESC>:set invpaste<CR>:set paste?<CR>

" F1 paste from / F2 copy to the macOS clipboard
nmap <F1> :set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
imap <F1> <Esc>:set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
nmap <F2> :.w !pbcopy<CR><CR>
vmap <F2> :w !pbcopy<CR><CR>

" ,fef  re-indent the whole file
nnoremap <leader>fef :normal! gg=G``<CR>
" ,tw   toggle wrap
nmap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>
" ,fc   jump to next merge-conflict marker
nmap <silent> <leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>
" ,u / ,l  upper / lower-case the word under cursor
nmap <leader>u mQviwU`Q
nmap <leader>l mQviwu`Q
" ,h  html -> haml (needs html2haml)
nmap <leader>h :%!html2haml --erb 2> /dev/null<CR>:set ft=haml<CR>
vmap <leader>h :!html2haml --erb 2> /dev/null<CR>

" NERDTree: ,, toggle, Ctrl-\ reveal current file
nmap <silent> <leader><leader> :NERDTreeToggle<CR>
nmap <C-\> :NERDTreeFind<CR>

" // clear search highlight, ,hl toggle it
nmap <silent> // :nohlsearch<CR>
nnoremap <leader>hl :set hlsearch! hlsearch?<CR>

" :w!! save with sudo
cmap w!! w !sudo tee > /dev/null %

" ,y / ,p  copy/paste between Vim instances via ~/.vbuf
vmap <leader>y :w! ~/.vbuf<CR>
nmap <leader>y :.w! ~/.vbuf<CR>
nmap <leader>p :r ~/.vbuf<CR>

if filereadable(expand("~/.vimrc.after"))
  source ~/.vimrc.after
endif
