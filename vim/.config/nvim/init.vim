" Using neovim 0.5
" install vim-plug
" open this file on neovim
" source %
" PlugInstall

" Interesting new setup is also: https://github.com/notthebee/dotfiles/tree/master/nvim
" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath = &runtimepath
" source ~/.vimrc

" general
let mapleader=" "
autocmd GUIEnter * set visualbell t_vb=
set noerrorbells
set tabstop=4 softtabstop=4
set colorcolumn = 80
set signcolumn = yes
set incsearch
set expandtab
set smartindent
set nowrap
set noerrorbells
set smartcase

" keeping history
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

" set every buffer opened
set hidden

" highlight remains off after search
set nohlsearch

" Enumeration of the lines on the left
set relativenumber
set nu

" Autocommands, press F9 and run python3, C, C++ code
autocmd filetype python nnoremap <F9> :w <bar> exec '!python3 '.shellescape('%')<CR>
autocmd filetype cpp nnoremap <F9> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype c nnoremap <F9> :w <CR>:!gcc % -o %:r && ./%:r<CR>

" Install vim-plug from: https://github.com/junegunn/vim-plug
" Using vim-plug, installing the plugins in the /home/angelo/.vim/plugged directory
call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'mbbill/undotree'
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " requires nvim 0.5
" Plug 'nvim-telescope/telescope.nvim' " requires nvim 0.5
" Plug 'neovim/nvim-lspconfig' " requires nvim 0.5
call plug#end()

" Set colorscheme
colorscheme gruvbox
set background=dark