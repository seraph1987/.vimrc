""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"General Settings 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible        " explicitly get out of vi-compatible mode
set hidden              " change buffers without saving
set history=1000        " remember last 1000 commands
set nobackup            " don't backup file
set nowritebackup       " don't backup before overwriting a file
set visualbell t_bv=    " disable visual bell and beep
set lazyredraw          " do not redraw while macros
set wildmenu            " enable enhanced command-line completion
set wrapscan            " set the search scan to wrap line
set ignorecase          " case insensitive by default
set incsearch           " use increment search
set smartcase           " if there are Caps, go case sensitive
set timeoutlen=500      " set timeout to 500 milliseconds 
set textwidth=80        
set directory=~/.vim/tmp
set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]

"Folding
set foldenable          " turn on folding
set foldlevel=100       " don't auto fold anything
set foldmarker={,}      " fold C style code
set foldmethod=marker   " fold on marker
set foldopen=block,hor,mark,percent,quickfix,tag,search

function SimpleFoldText()
    return getline(v:foldstart).' '
endfunction

set foldtext=SimpleFoldText()

filetype on
filetype plugin on      
filetype indent on      

syntax on               " turn on syntax highlighting

colorscheme desert      " my default colorscheme

set laststatus=2        " always show the status line
set showmode            " show what mode you are in
set nohlsearch          " do not highlight for searched phrases
set number              " show line number
set numberwidth=4       " minimal number of columns to use for the line number
set ruler               " show the line and column number of the cursor position
set showcmd             " show the command being typed
set showmatch           " show matching brackets
set splitbelow          " put new window below the current one
set splitright          " put new window right of the current one

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text Formatting 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab           " replace tab with spaces
set autoindent
set smartindent 
set tabstop=8
set softtabstop=4
set shiftwidth=4
set nowrap              " no wrap line

" allow backspacing over autoindent, linebreaks and start of insert
set backspace=indent,eol,start 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mapping
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" remap <leader> to ','
let mapleader="," 
let g:mapleader="," 

" use 'Y' to yank to the end of line
nnoremap Y y$

" use right arrow to toggle TagList window
nnoremap <right> :TlistToggle<cr>
" use left arrow to toggle NerdTree window
nnoremap <left> :NERDTreeToggle<cr>
" use up arrow to jump to previous buffer
nnoremap <up> :bp<cr>
" use down arrow to jump to next buffer
nnoremap <down> :bn<cr>

" open/source my vimrc file more quickly
nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" open bash with ConqueTerm
nnoremap <leader>sh :ConqueTermVSplit bash<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GUI Setings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("gui_running")
    set cursorline          " highlight current row
    set background=dark     " use dark background by default
    set guioptions=         " get rid of all gui elements
    set autochdir           " always switch to the current file directory
    set mousehide           " hide the mouse cursor when typing
    set guifont=Monaco:h12

    set columns=85
    set lines=40
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pathogen
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype off 
call pathogen#runtime_append_all_bundles() 
call pathogen#helptags() 
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Taglist
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_Auto_Open=0          
let Tlist_Ctags_Cmd="ctags"   
let Tlist_Process_File_Always=1
let Tlist_Auto_Update=1
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
let Tlist_Display_Prototype=1	
let Tlist_Use_SingleClick = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"NerdCommenter
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDSpaceDelims=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ConqueTerm
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ConqueTerm_EscKey='<esc>'
let g:ConqueTerm_Color=1
let g:ConqueTerm_TERM='xterm'
let g:ConqueTerm_ReadUnfocused=1
let g:ConqueTerm_PromptRegex='^\w\+@[0-9A-Za-z_.-]\+:[0-9A-Za-z_./\~,:-]\+\$'
let g:ConqueTerm_CWInsert=0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
