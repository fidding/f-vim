""==========================================
" Author: fidding 
" Version: 1.0 
" Email: 395455856@qq.com 
" BlogPost: http://www.fidding.me
" ReadMe: README.md
" Last_modify: 2017-03-18
""==========================================

"关闭vi兼容模式
set nocompatible
" 设置运行路径
set runtimepath^=~/.vim/plugged
"==========================================
" Plugin Settings 插件加载 
"==========================================
call plug#begin('~/.vim/bundle')
" 文件模糊搜索
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/syntastic'
Plug 'majutsushi/tagbar'
" 自动补全html/xml标签
Plug 'docunext/closetag.vim', { 'for': ['html', 'xml'] }
" 状态栏
Plug 'powerline/powerline'
" molokai-theme
Plug 'tomasr/molokai'
" dracula-theme
Plug 'dracula/vim'
" 目录树
Plug 'scrooloose/nerdtree'
" 自动补全
Plug 'Shougo/neocomplete.vim'
" 快速注释
Plug 'scrooloose/nerdcommenter'
call plug#end()

"==========================================
" General Settings 基础设置
"==========================================
" 设置backspace工作方式，解决在insert模式下退格删除无效
set backspace=indent,eol,start
" 设置leader key
let mapleader = "\<Space>"
" 语法高亮
syntax on
" 显示行号
set nu
" 检测文件类型
filetype on
" 对不同文件类型采用不同缩进
filetype indent on
" 允许插件
filetype plugin on
" 启动自动补全
filetype plugin indent on
" 突出显示当前列
set cursorcolumn
" 突出显示当前行
set cursorline
" 鼠标暂不启用
set mouse-=a
" 启用鼠标
"set mouse=a
" 移除toolbar
set guioptions-=T
" 移除menubar
set guioptions-=m
" 不需要备份
set nobackup
" 启动显示状态行
set laststatus=2
" 设置字体
set guifont=Consolas:h12
autocmd InsertEnter * se cul

"==========================================
" Display Settings 展示/排版等界面格式设置
"==========================================
" 在状态栏显示当前行号列号
set ruler
" 在状态栏显示正在输入的指令
set showcmd
" 左下角显示当前vim模式
set showmode
" 高亮匹配查找
set hlsearch
" 打开增量搜索模式，随着键入即时搜索
set incsearch
" 搜索时忽略大小写
set ignorecase
" 有一个或以上大写字母时仍大小写敏感
set smartcase
" 括号配对情况，跳转并高亮匹配括号
set showmatch
" 代码折叠
set foldenable
" 折叠方法
" manual    手工折叠
" indent    使用缩进表示折叠
" expr      使用表达式定义折叠
" syntax    使用语法定义折叠
" diff      对没有更改的文本进行折叠
" marker    使用标记进行折叠, 默认标记是 {{{ 和 }}}
set foldmethod=indent
set foldlevel=99
" 代码折叠自定义快捷键 <leader>zz
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
" 缩进配置
"Smart indent
set smartindent
" 打开自动缩进
set autoindent
set cindent
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s
" tab缩进，用空格代替tab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
" 显示行号
set number

"==========================================
" FileEncode Settings 文件编码,格式
"==========================================
" 设置新文件的编码为 UTF-8
set encoding=utf-8
" 自动判断编码时，依次尝试以下编码：
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=cn
"set langmenu=zh_CN.UTF-8
"set enc=2byte-gb18030
" 下面这句只影响普通模式 (非图形界面) 下的 Vim
set termencoding=utf-8

"Use Unix as the standard file type
set ffs=unix,dos,mac

" 如遇Unicode值大于255的文本，不必等到空格再折行
set formatoptions+=m
" 合并两行中文时，不在中间加空格
set formatoptions+=B

"==========================================
" HotKey Settings  自定义快捷键设置
"==========================================
" 关闭方向键, 强迫自己用 hjkl
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>
" 分屏窗口移动, Smart way to move between windows
nnoremap <Leader>wj <C-W>j
nnoremap <Leader>wk <C-W>k
nnoremap <Leader>wh <C-W>h
nnoremap <Leader>wl <C-W>l
"关闭窗口
nnoremap <Leader>wc :close<CR>
" 文件保存
nnoremap <Leader>fs :w<CR>
" 替代esc解决方案
inoremap jj <esc>
" vim中允许使用win的复制粘贴快捷键
map <C-c> "+y
map <C-v> "+p
" F1 废弃这个键,防止调出系统帮助
" I can type :help on my own, thanks.  Protect your fat fingers from the evils of <F1>
noremap <F1> <Esc>"

"==========================================
" commenter Settings 快速注释设置 
"==========================================
" 快捷键简单说明
" <Leader>cc 注释当前行或选中行
" <Leader>cu 取消注释当前行或选中行 
let g:NERDSpaceDelims=1
let g:NERDAltDelims_python = 1

"==========================================
" Closetag Settings html标签补全设置
"==========================================
let g:closetag_html_style=1

"==========================================
" Powerline Settings 状态栏设置
"==========================================
set runtimepath^=~/.vim/bundle/powerline/powerline/bindings/vim
let g:Powerline_symbols='fancy'

"==========================================
" Theme Settings 主题设置
"==========================================
set t_Co=256
set background=dark
color dracula
"color molokai

"==========================================
" Ctrlp Settings Ctrlp设置 
"==========================================
let g:ctrlp_map='<Leader>p'
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
" NerdTree Settings NerdTree设置
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
" Neocomplete Settings 自动补全设置
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
" Other Settings 其他设置
"==========================================
" vimrc文件修改之后自动加载, windows
"autocmd! bufwritepost _vimrc source %
" vimrc文件修改之后自动加载, linux
"autocmd! bufwritepost .vimrc source %
