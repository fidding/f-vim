""==========================================
" Author: fidding 
" Version: 1.2 
" Email: 395455856@qq.com 
" BlogPost: http://www.fidding.me
" ReadMe: README.md
" Last_modify: 2017-04-02
""==========================================

" Turn off the vi compatibility mode
set nocompatible
" set runtime path 
set runtimepath^=~/.vim/plugged
"==========================================
" Plugin Settings 
"==========================================
call plug#begin('~/.vim/plugged')
" File fuzzy query
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/syntastic'
Plug 'majutsushi/tagbar'
" Automatic completion of the html/xml label
Plug 'docunext/closetag.vim', { 'for': ['html', 'xml'] }
" status bar 
"Plug 'powerline/powerline'
" molokai-theme
Plug 'tomasr/molokai'
" dracula-theme
Plug 'dracula/vim'
" Directory tree
Plug 'scrooloose/nerdtree'
" Automatic completion 
Plug 'Shougo/neocomplete.vim'
" quickly comment 
Plug 'scrooloose/nerdcommenter'
" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

"==========================================
" General Settings
"==========================================
" set backspace work style
set backspace=indent,eol,start
" set leader key
let mapleader = "\<Space>"
" Grammar highlighting
syntax on
" Detect file types
filetype on
" Change the indentation mode according to the file type
filetype indent on
" Allow plugins
filetype plugin on
filetype plugin indent on
" save file
set fileformats=dos,unix,mac
" Highlight the current column 
set cursorcolumn
" Highlight the current line
set cursorline
" Disable the mouse
set mouse-=a
" Enable the mouse
"set mouse=a
" reomove toolbar
set guioptions-=T
" remove menubar
set guioptions-=m
" Cancel the backup
set nobackup
" display status bar
set laststatus=2
" set font style 
if has('gui_win32')
    set guifont=Consolas:h12
else
    set guifont=Source_Code_Pro:h12
endif
autocmd InsertEnter * se cul

"==========================================
" Display Settings
"==========================================
" The status bar shows the line number column number
set ruler
" The status bar displays the input command
set showcmd
" shows vim mode
set showmode
" Highlight match search
set hlsearch
set incsearch
" Ignore case when searching
set ignorecase
" One or more capital letters are capitalized sensitive
set smartcase
" Show brackets match
set showmatch
" code folding 
set foldenable
" floding style 
" manual 
" indent
" expr 
" syntax
" diff
" marker
set foldmethod=indent
set foldlevel=99
"  Customize shortcuts <leader>zz
let g:FoldMethod = 0
map <leader>zz :call ToggleFold()<cr>
fun! ToggleFold()
    if g:FoldMethod == 0
        exe "normal! zM"
        let g:FoldMethod = 1
    else
        exe "normal! zR"
        let g:FoldMethod = 0
    endif
endfun
" indent config 
" Smart indent
set smartindent
" Turn on auto indent
set autoindent
set cindent
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s
" Use spaces instead of tab indentation
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
" Show line number
set number

"==========================================
" FileEncode Settings
"==========================================
" Set the encoding to utf-8
set encoding=utf-8
" utomatically determine the coding sequence
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=cn
"set langmenu=zh_CN.UTF-8
"set enc=2byte-gb18030
set termencoding=utf-8

"Use Unix as the standard file type
set ffs=unix,dos,mac
set formatoptions+=m
set formatoptions+=B
" Sync clipboard
" set clipboard+=unnamed
"==========================================
" HotKey Settings
"==========================================
" Close the arrow keys
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>
" Smart way to move between windows
nnoremap <Leader>wj <C-W>j
nnoremap <Leader>wk <C-W>k
nnoremap <Leader>wh <C-W>h
nnoremap <Leader>wl <C-W>l
" close window
nnoremap <Leader>wc :close<CR>
" save file 
nnoremap <Leader>fs :w<CR>
" instead of esc 
inoremap jj <esc>
" closetag ({[
imap () ()<Left>
imap {} {}<Left>
imap [] []<Left>
imap "" ""<Left>
imap '' ''<Left>
imap <> <><Left>
" Vim allows the use of the window copy and paste shortcut keys
map <C-c> "+y
map <C-v> "+p
" Disable F1 to bring up system help
" I can type :help on my own, thanks.  Protect your fat fingers from the evils of <F1>
noremap <F1> <Esc>"

"==========================================
" commenter Settings 
"==========================================
" Instructions for use
" <Leader>cc Comment the current row or select the line
" <Leader>cu  Uncomment the current row or select the line
let g:NERDSpaceDelims=1
let g:NERDAltDelims_python = 1

"==========================================
" Closetag Settings Html tag completion
"==========================================
let g:closetag_html_style=1

"==========================================
" Powerline Settings
"==========================================
"set runtimepath^=~/.vim/plugged/powerline/powerline/bindings/vim
"let g:Powerline_symbols='fancy'

"==========================================
" Airline Settings
"==========================================
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
        let g:airline_symbols = {}
endif

if has('gui_win32')
    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''
    let g:airline_symbols.branch = ''
    let g:airline_symbols.readonly = ''
    let g:airline_symbols.linenr = ''
else
    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''
    let g:airline_symbols.branch = ''
    let g:airline_symbols.readonly = ''
    let g:airline_symbols.linenr = ''
endif
" ignore whitespace
let g:airline#extensions#whitespace#enabled=0
" tabline
"let g:airline#extensions#tabline#enabled = 1
"nnoremap <Leader>bn :bn<CR>
"nnoremap <leader>bp :bp<CR>    
" Theme Settings
"==========================================
color dracula
"set t_Co=256
"set background=dark
"color molokai

"==========================================
" Ctrlp Settings
"==========================================
let g:ctrlp_map='<Leader>fl'
let g:ctrlp_cmd='CtrlP'
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " Linux/MacOSX
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

"==========================================
" NerdTree Settings
"==========================================
let NERDChristmasTree=0
let NERDTreeWinSize=25
let NERDTreeChDirMode=2
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=0
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="left"
"open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" Close vim if the only window left open is a NERDTree
autocmd bufenter *  if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap <Leader>n :NERDTreeToggle<CR>

"==========================================
" Neocomplete Settings
"==========================================
"Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr>><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

"==========================================
" Other Settings
"==========================================
" The vimrc file is automatically loaded after modification, windows
"autocmd! bufwritepost _vimrc source %
" The vimrc file is automatically loaded after modification, linux
"autocmd! bufwritepost .vimrc source %
