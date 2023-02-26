" space to start insert
noremap <SPACE> i
" ijkl to up,right,down,left
noremap i <UP>
noremap k <DOWN>
noremap j <LEFT>
noremap l <RIGHT>
noremap I 5<UP>
noremap K 5<DOWN>
noremap <C-i> 5<UP>
noremap <C-k> 5<DOWN>
" move cursor under insert mode
inoremap <C-j> <LEFT>
inoremap <C-l> <RIGHT>
inoremap <C-i> <UP>
inoremap <C-k> <DOWN>
" move to the head/tail of a line
noremap <C-j> 0
noremap <C-l> $
" navigation
noremap = n
noremap - N
" re-undo
noremap U <C-r>
" find the next/preivious same word
noremap J "
noremap L *
" cancelled keybindings
map <C-z> <nop>
map <C-f> <nop>
map s <nop>
map h <nop>

