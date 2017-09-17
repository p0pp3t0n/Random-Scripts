" For vundle
set nocompatible              " be iMproved, required

syntax enable
set relativenumber
"set background:dark
set textwidth=79  " lines longer than 79 columns will be broken
set shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4     " a hard TAB displays as 4 columns
set expandtab     " insert spaces when hitting TABs
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftwidth'
set autoindent    " align the new line indent with the previous line
set cmdheight=2   " Height of command bar
set ignorecase    " Ignore case when searching
set hlsearch      " Highlight search results
set incsearch     " Show incremental search
set showmatch     " Show matching bracket
set showcmd       " Show as you're typing the command
set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l 
set clipboard=unnamedplus


" move to beginning/end of line
nnoremap B ^
nnoremap E $
" Binding space to open and close folds
nnoremap <space> za
" Binding tabs
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tn  :tabnew<CR>
nnoremap tc  :tabclose<CR>
nnoremap <C-j> :lnext<CR>
nnoremap <C-k> :lprevious<CR>
nnoremap <C-h> :lopen<CR>
" Binding to execute a Python script
nnoremap tp  :!python %<CR>
nnoremap tb  :!bash %<CR>
nnoremap <C-l> <C-w>l
" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE '
    endif
    return ''
endfunction


let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""

endfunction
