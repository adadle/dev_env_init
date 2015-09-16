"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
" " " """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " sets how many lines of history vim has to remember
set history=100

" enable filetype plugins
filetype plugin on
filetype indent on

" set to auto read when a file is changed from the outside
set autoread
set nu
nnoremap ,n :set nu!<cr>

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc,*.class

"Always show current position

set ruler

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Change the dir auto
set autochdir

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8
language en_US

" Use Unix as the standard file type
set ffs=unix,dos,mac


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
"set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
"set expandtab

" Be smart when using tabs ;)
set smarttab

"1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
" set tw=500

set autoindent "Auto indent
set si "Smart indent
set wrap "Wrap lines

colorscheme darkblue

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Smart way to move between windows
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

" Useful mappings for managing tabs
map <leader>tn :tabnew 
map <leader>to :tabonly<cr>
map <leader>tm :tabmove
map <leader>tc :tabclose<cr>
map <c-n> :tabnext<cr>
map <c-p> :tabprevious<cr>

" opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/



" Remember info about open buffers on close
set viminfo^=%



""""""""""""""""""""""""""""""
" => Status line
 """"""""""""""""""""""""""""""
" Always show the status line
set laststatus=2


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>


" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Special Config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>ve :vsplit $MYVIMRC<cr>
nnoremap <leader>e :e! $MYVIMRC<cr>



" 在插入模式下 清空改行
inoremap <c-d> <esc>ddO

" 在插入模式下 删除该行
inoremap <c-f> <esc>ddi

" 在normal模式下，为某词添加双引号
nnoremap <leader>" wi"<esc>bi"<esc>lel

" vimrc group
augroup vimrcgroup
autocmd!
autocmd bufwritepost *.vimrc source %
augroup end

" NERO TREE
" Make the tree beautiful
let NERDTree_title="[NERD]"
let NERDChristmasTree=1
" 自动将焦点调整到屏幕中间
let NERDTreeAutoCenter=1
" 单目录 双文件
let NERDTreeMouseMode=2
" 是否显示书签列表
let NERDTreeShowBookmarks=1
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
let NERDTreeWinPos='left'
let NERDTreeWinSize=31
nnoremap <leader>fe :NERDTreeToggle<cr>
nnoremap <leader>mi :NERDTreeMirror<cr>

" Taglist
nmap ,tl :Tlist<cr>
let Tlist_Ctags_Cmd='/usr/bin/ctags'
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
let Tlist_Auto_Open=0
let Tlist_File_Fold_Auto_Close=1
let Tlist_GainFocus_On_ToggleOpen=0
" let Tlist_WinHeight=
let Tlist_WinWidth=25

" javacomplete
augroup javagroup
autocmd!
autocmd Filetype java set omnifunc=javacomplete#Complete
autocmd Filetype java set completefunc=javacomplete#CompleteParamslnf
inoremap <M-/> <C-x><C-o>
augroup end

" php complete
augroup phpgroup
autocmd!
"autocmd Filetype php call AddPHPFuncList()
autocmd Filetype php set omnifunc=phpcomplete#CompletePHP
augroup end

" python complete
augroup pythongroup
autocmd!
let g:pydiction_location='~/.vim/tools/pydiction/complete-dict'
augroup end

" 折叠
" set foldmethod=indent

nmap <leader>l :e %<esc>G

" Conque Term
" 设置python的路径
let g:ConqueTerm_PyExe='/usr/bin/python'
" 快速模式
let g:ConqueTerm_FastMode=0
let g:ConqueTerm_Color=1
let g:ConqueTerm_PromptRegex='^\w\+@[0-9A-Za-z_.-]\+:[0-9A-Za-z_./\~,:-]\+\$'
let g:ConqueTerm_SessionSupport=0
let g:ConqueTerm_SessionSupport=0

let g:ConqueTerm_ReadUnfocused=1
let g:ConqueTerm_InsertOnEnter=0
" 隐藏启动信息
let g:ConqueTerm_StartMessages=0
let g:ConqueTerm_ColorMode = 'conceal'

nnoremap <leader>r :ConqueTerm bash<cr>
nnoremap <leader>lb :set lbr!<cr>

" set cursorline
" set cursorcolumn 
" highlight CursorColumn cterm=none ctermbg=2 ctermfg=0
" highlight CursorLine cterm=none ctermbg=3 ctermfg=0
set showcmd
" 设置断行，文本宽度设为80字符
"set linebreak
"set textwidth=80
vnoremap <leader>g "ay/<c-r>a
