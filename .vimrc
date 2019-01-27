" Window appearance preferences
set hidden
set background=dark
filetype plugin on
syntax on
set hlsearch

" Window behavior preferences
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

" GUI options
set guioptions-=T
set guioptions-=r
set guioptions-=L
set guioptions-=m 
set guitablabel=%t
set number
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
if has("autocmd")
  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
  au InsertEnter,InsertChange *
    \ if v:insertmode == 'i' | 
    \   silent execute '!echo -ne "\e[6 q"' | redraw! |
    \ elseif v:insertmode == 'r' |
    \   silent execute '!echo -ne "\e[4 q"' | redraw! |
    \ endif
  au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif

" Vim saving behavior
set nobackup
set nowritebackup
set noswapfile
set noundofile

" Tab behavior
set tabstop=4
set shiftwidth=4
set expandtab

" Key mappings
map <F7> :bp<CR>
map <F8> :bn<CR>
command W w
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Right> <nop>
inoremap <Left> <nop>
imap jk <ESC> 
imap JK <ESC>
imap kj <ESC>
imap KJ <ESC>
