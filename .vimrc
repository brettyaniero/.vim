
colorscheme ron

set hidden
syntax on

" Text searching
set hlsearch
set ignorecase
set smartcase

set nobackup
set nowritebackup
set noswapfile
set noundofile

set mouse=a

set tabstop=4
set shiftwidth=4
set expandtab
set number
set relativenumber
set autoindent
set smartindent

" Turns off line-splitting feature of Vim that breaks whitespace sensitive 
" programming languages
set formatoptions-=tc

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
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

command W w
imap jk <ESC>
imap JK <ESC>
imap kj <ESC>
imap KJ <ESC>

" Add locations of tags files to be used in conjunction with ctags
set tags=tags;

map ff :w !xclip -i -sel -c<CR><CR>
map mm :r !xclip -o -sel -c<CR>

