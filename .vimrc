set viminfo='40,<1000

set expandtab
set tabstop=4       " tab width is 4 spaces
set shiftwidth=4    " indent also with 4 spaces
set softtabstop=4

syntax enable       " enable syntax highlight for files
"colorscheme koehler

set formatoptions-=cro
set noautoindent
set nosmartindent

set nobackup        " Do not create *~ files
set noswapfile      " Do not create .*.swp files

set ruler           " display cursor position

set nowrap          " disable wrapping lines

"search options
"set ignorecase      " ignore case on search
set hlsearch        " set highlight for search patterns

" Moving blocks
set selectmode=
vnoremap < <gv
vnoremap > >gv

vnoremap // y/<C-R>"<CR>

" Unbind man page thing
noremap K <nop>
" Unbind weird undo
noremap U <nop>

" Set black background after 80 characters
" Disabled because this screws up OS copy/paste
"let &colorcolumn=join(range(81,150),",")
"highlight ColorColumn ctermbg=0 guibg=#000000

"match ErrorMsg '\%>80v.\+'

" Bind Ctrl+Shift+C to copy to OS clipboard
" Bind Ctrl+Shift+V to paste from OS clipboard
" nmap <C-S-v> "+gP
" imap <C-S-v> <ESC><C-S-v>i
" vmap <C-S-c> "+y 

function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

au BufRead,BufNewFile * set formatoptions-=cro
