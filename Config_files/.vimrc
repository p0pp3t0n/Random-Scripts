" For vundle
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'xolox/vim-notes'
Plugin 'xolox/vim-misc'
Plugin 'vim-scripts/utl.vim'
Plugin 'vimwiki/vimwiki'
call vundle#end()            " required
filetype plugin indent on    " required
" End Vundle"
"
syntax enable
set nu
set background:dark
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
"set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l 
"set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]
set clipboard=unnamedplus


" Binding keyboard keys
map <leader>q :e ~/buffer<cr>
map <leader>pp :setlocal paste!<cr>
" move to beginning/end of line
nnoremap B ^
nnoremap E $
" Binding space to open and close folds
nnoremap <space> za
" Binding tabs
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tn  :tabnew<CR>
nnoremap tc  :tabclose<CR>
" Binding for NoteToHtml
nnoremap nh  :VimwikiAll2HTML<CR>
nnoremap nhh  :Vimwiki2HTMLBrowse<CR>
" Binding to execute a Python script
nnoremap tp  :!python %<CR>
" Binding to move between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE '
    endif
    return ''
endfunction
:let g:notes_directories = ['~/Gdrive/j_Files/']
:let g:notes_suffix = '.txt'

:let g:vimwiki_list = [{'path': '$HOME/Gdrive/Wiki' , 'syntax': 'markdown', 'ext': '.md'
            \ , 'custom_wiki2html': '$HOME/Gdrive/Scripts/wiki2html.sh'}, {'path': '$HOME/Gdrive/LWiki' , 'syntax': 'markdown', 'ext': '.md'
            \ , 'custom_wiki2html': '$HOME/Gdrive/Scripts/wiki2html.sh'}]
