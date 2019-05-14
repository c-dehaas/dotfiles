syntax enable
filetype indent on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
"set number
set relativenumber
set showcmd
set cursorline
set wildmenu
set showmatch
set autoindent
set visualbell
set nostartofline
set confirm
set ruler
set mouse=a
set ignorecase
set smartcase
set nohlsearch

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'rafi/awesome-vim-colorschemes'
Plug 'Kana/vim-smartinput'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
Plug 'Shougo/deoplete.nvim'
Plug 'vim-syntastic/syntastic'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
call plug#end()

" Colorscheme
colorscheme flattened_dark

" Keybindings
nmap <leader>vi :e ~/.config/nvim/init.vim
nmap <leader>i3 :e ~/.config/i3/config
nmap <leader>t :NERDTreeToggle<CR>
nmap <leader>g :GitGutterToggle<CR>
nmap <silent> <A-k> :wincmd k<CR>
nmap <silent> <A-j> :wincmd j<CR>
nmap <silent> <A-h> :wincmd h<CR>
nmap <silent> <A-l> :wincmd l<CR>
imap jk <Esc>
imap kj <Esc>
vmap jk <Esc>
vmap kj <Esc>
tnoremap <Esc> <C-\><C-n>

" ALE
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_linters = {
\   'python': ['pep8', 'pylint'],
\}

" Deoplete
let g:deoplete#enable_at_startup = 1

" Lightline
let g:lightline = {
\   'colorscheme': 'solarized',
\}

