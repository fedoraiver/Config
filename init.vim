"  Python's location
let g:python3_host_prog = '/opt/homebrew/bin/python3'  
"  basic settings: 
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
" Vim-Plug's pluggins
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'tmhedberg/SimpylFold'

call plug#end()
" Coc.nvim's pluggins
 let g:coc_global_extensions = [
		\ 'coc-json',
		\ 'coc-vimlsp',
		\ 'coc-markdownlint',
		\ 'coc-translator',
		\ 'coc-xml', 
		\ 'coc-pyright',
		\]
" Coc.nvim's config
set hidden 
set updatetime=100
set shortmess+=c
set signcolumn=yes
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-o> coc#refresh()
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> n<SPACE> :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" set the background (TODO)

