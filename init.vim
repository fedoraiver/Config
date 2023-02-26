syntax on
let mapleader=" "
set number
set relativenumber
set cursorline
set showcmd
set wrap
set wildmenu
set hlsearch 
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set autochdir
set scrolloff=5
noremap s<CR> :nohlsearch<CR>
noremap <SPACE> i
noremap i <UP>
noremap k <DOWN>
noremap j <LEFT>
noremap l <RIGHT>
noremap I 5<UP>
noremap K 5<DOWN>
noremap <C-i> 5<UP>
noremap <C-k> 5<DOWN>
noremap <C-j> 0
noremap <C-l> $
noremap = n
noremap - N
map h <nop>
map S :w<CR>
map s <nop>
map Q :q<CR>
noremap si :set nosplitbelow<CR>:split:<CR>
noremap sk :set splitbelow<CR>:split:<CR>
noremap sj :set nosplitright<CR>:vsplit:<CR>
noremap sl :set splitright<CR>:vsplit:<CR>
noremap <C-s> <C-W><C-W>
noremap U <C-r>
noremap R :w<CR>:source %<CR>
map <C-z> <nop>
nnoremap <C-z> :NERDTreeToggle<CR>
noremap <C-f> <nop>
noremap J #
noremap L *
inoremap <C-j> <LEFT>
inoremap <C-l> <RIGHT>
inoremap <C-i> <UP>
inoremap <C-k> <DOWN>
