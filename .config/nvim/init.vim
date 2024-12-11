" Makes pasting normal.
"set paste

syntax on " Turn on syntax highlighting.
set synmaxcol=2000
set nocompatible "legacy some vi compatability"
set shortmess+=I " Disable the default Vim startup message.
set number " Show line numbers.
set relativenumber "Relative numbers"
set laststatus=2 " Always show the status line at the bottom, even if you only have one window open.
set backspace=indent,eol,start "Normal back space behaviour"
set autoread "Auto reloadd"
set hidden "Allow existance of hidden usaved tabs more info `:help hidden`"
set exrc " Local configs
set mouse+=a " Mouse support
set foldmethod=indent
set nofoldenable
colorscheme gruvbox " Colors
nnoremap gr :tabprevious<CR> " Previous tab open

"Ignore case search always Smart search with capitals"
set ignorecase
set smartcase

" Enable searching as you type, rather than waiting till you press enter.
set incsearch
set hlsearch

"Remap esc to jk/kj"
imap jk <Esc>
imap kj <Esc>

"To display longer lines"
set wrap
set linebreak

"Turn off backups of files"
set nobackup
set noswapfile


call plug#begin("~/.vim/plugged")
 Plug 'nvim-lua/plenary.nvim'
 Plug 'nvim-telescope/telescope.nvim'
 Plug 'stevearc/oil.nvim'
 Plug 'albenisolmos/telescope-oil.nvim'

" Plug 'neovim/nvim-lspconfig'
" Plug 'simrat39/rust-tools.nvim'
" Plug 'hrsh7th/cmp-nvim-lsp'
" Plug 'hrsh7th/cmp-buffer'
" Plug 'hrsh7th/cmp-path'
" Plug 'hrsh7th/cmp-cmdline'
 Plug 'hrsh7th/nvim-cmp'
 Plug 'hrsh7th/cmp-buffer'
 Plug 'hrsh7th/cmp-path'
" 
" " For vsnip users.
" Plug 'hrsh7th/cmp-vsnip'
" Plug 'hrsh7th/vim-vsnip'

call plug#end()

lua require('conf')

"Tabs for python
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab "Replace tab with spaces
set softtabstop=4 "4 spaces in tab

 "Clipboard on wayland
 xnoremap <silent> *y :w !wl-copy<CR><CR>

 "Tag file serach"
"set tags=$HOME/ctags/tags;/
set tags=./tags;,tags,$HOME/ctags/tags
set cpt-=t

"Open tag in the new tab
nnoremap <C-[><C-]> <C-w><C-]><C-w><S-t>

