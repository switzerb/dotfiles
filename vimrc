" Documentation on Plug:  https://github.com/junegunn/vim-plug
    call plug#begin('~/.vim/plugged')
Plug 'git@github.com:vim-ruby/vim-ruby.git'               " Recent-ish Ruby syntax highlighting
Plug 'git@github.com:flazz/vim-colorschemes.git'          " loads o' colorschemes
Plug 'git@github.com:junegunn/fzf.vim.git'                " use 'fzf' in vim #(NOTE: `brew install fzf`)
Plug 'git@github.com/scrooloose/nerdtree.git'             " NERDtree.

" ===== Plugin config =====

set rtp+=/usr/local/opt/fzf
map <C-p> :FZF<Enter>

" Lazy way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" sometimes the Escape key is too far away
" and in THE FUTURE, it might not even be a physical key. COURAGE
imap jj <Esc>

map <C-n> :NERDTreeToggle<CR>
nmap <Leader>e. :e %:h<CR>

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
