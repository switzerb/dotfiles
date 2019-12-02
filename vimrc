" Documentation on Plug:  https://github.com/junegunn/vim-plug
    call plug#begin('~/.vim/plugged')
Plug 'git@github.com:vim-ruby/vim-ruby.git'               " Recent-ish Ruby syntax highlighting
Plug 'git@github.com:flazz/vim-colorschemes.git'          " loads o' colorschemes
Plug 'git@github.com:junegunn/fzf.vim.git'                " use 'fzf' in vim #(NOTE: `brew install fzf`)
Plug 'git@github.com:tomtom/tcomment_vim.git'             " Ctrl+dash 2x to comment (and a bunch of other stuff I never use)
Plug 'git@github.com:jlanzarotta/bufexplorer.git'         " Buffer Explorer, quite useful
Plug 'git@github.com:nelstrom/vim-textobj-rubyblock.git'  " spiffy nav inside/around Ruby blocks
Plug 'git@github.com:kana/vim-textobj-user.git'           " dependency of vim-textobj-rubyblock

" ===== Plugin config =====

set rtp+=/usr/local/opt/fzf
map <C-p> :FZF<Enter>

" Lazy way to move between windows
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

" sometimes the Escape key is too far away
" and in THE FUTURE, it might not even be a physical key. COURAGE
imap jj <Esc>

" Set leader key to comma
:let mapleader = ","

" Edit the current directory
nmap <Leader>e. :e %:h<CR>

" Show buffer list (also mapped to "<leader>be", but this is easier to type
map <leader>bb :BufExplorer<cr>

" Misc
set hlsearch

" Colors
set t_Co=256 " 256 colors
set background=dark

set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
set number
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

call plug#end()

compiler ruby         " Enable compiler support for ruby
autocmd FileType ruby :set foldmethod=syntax
autocmd FileType ruby :set foldlevel=1
