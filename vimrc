""
" hotea's vimrc
" myblog: http://my.oschina.net/sukai
"
" 参考: http://amix.dk/vim/vimrc.html
"

"	-> 常规
"	-> 界面
"	-> 颜色和字体
"	-> 文件和备份
"	-> 文本缩进
"	-> 可视模式
"	-> 移动,缓冲区
"	-> 状态栏
"	-> 映射
"	-> 搜索和显示
"	-> 拼写检查
"	-> 杂项
"	-> 插件



"	-> 常规
""""""""""""""""""""""""""""""""""""""""""""""""""
" 历史记录
set history=500			


" 当文件改变时自动读取
set autoread

" 
let mapleader=","
let g:mapleader=","

" 快速保存
nmap <leader>w :w!<cr>

" 折叠
" set foldmethod=indent

"	-> 界面
""""""""""""""""""""""""""""""""""""""""""""""""""

set number

" 光标上下两侧最少保留的屏幕行数
set so=7

" 打开通配菜单
set wildmenu
" 忽略的文件
set wildignore=*.o,*~,*.pyc

" 总是显示当前位置
" set ruler

" 增高命令栏
" set cmdheight=1

" a buffer becomes hidden when it is abandoned, 保留修改了的缓冲区但不写回
" set hid

" 设置backspace
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" 搜索忽略大小写
set ignorecase
" 智能忽略
set smartcase

" 高亮显示搜索结果
set hlsearch

" 增量搜索
set incsearch

" 执行宏时不重绘
set lazyredraw

" 设置magic
set magic

" 显示匹配的括号
set showmatch
" how many tenths of a second to blink when matching brackets
set mat=2

" 关闭响铃
set noerrorbells
set novisualbell
set t_vb=
set tm=500



 
"	-> 颜色和字体
""""""""""""""""""""""""""""""""""""""""""""""""""
" 激活语法高亮
syntax enable

" colorscheme desert
" set background=dark

" 设置字符编码
set encoding=utf8

" 设置文件类型
set ffs=unix,dos




"	-> 文件和备份
""""""""""""""""""""""""""""""""""""""""""""""""""
" 关闭备份
set nobackup
set nowb
set noswapfile




"	-> 文本缩进
""""""""""""""""""""""""""""""""""""""""""""""""""
" 使用空格代替tab
set expandtab

" 智能tab
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" 折行
set lbr
set tw=500

" Auto indent
set ai
" Smart indent
set si
" 行回绕
set nowrap
" 左右滚动
set sidescroll=10


"	-> 可视模式
""""""""""""""""""""""""""""""""""""""""""""""""""
" 按下 * 或 # 搜索当前选择
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>



"	-> 移动,缓冲区
""""""""""""""""""""""""""""""""""""""""""""""""""
" 将长行视为断行(在条目中移动时有用)
map j gj
map k gk

" 将<Space>映射到/,Ctrl-<Space>映射到?
map <space> /
map <c-space> ?

" 当<leader><ct>按下时禁用高亮
map <silent> <leader><cr> :noh<cr>

" 窗口间移动
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" 关闭当前缓冲区
map <leader>bd :Bclose<cr>

" 关闭所有缓冲区
map <leader>ba :1,1000 bd!<cr>

" 管理标签
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove<cr>

" 使用当前缓冲区的路径打开新标签
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" 将CWD设置为打开缓冲区的目录
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" 指定缓冲区切换时的表现
try
    set switchbuf=useopen,usetab,newtab
    set stal=2
catch
    endtry

" 关闭时记住缓冲区信息
set viminfo^=%




"	-> 状态栏
""""""""""""""""""""""""""""""""""""""""""""""""""
" 总是显示状态栏
set laststatus=2

"	-> 映射
""""""""""""""""""""""""""""""""""""""""""""""""""

" 使用ALT+[jk]移动一行文本
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`<my`>mzgv`yo`z




"	-> 搜索和显示
""""""""""""""""""""""""""""""""""""""""""""""""""
" When you press gv you vimgrep after the selected text
vnoremap <silent> gv :call VisualSelection('gv')<CR>

" Open vimgrep and put the cursor in the right position
map <leader>g :vimgrep // **/*.<left><left><left><left><left><left><left>

" Vimgreps in the current file
map <leader><space> :vimgrep // <C-R>%<C-A><right><right><right><right><right><right><right><right><right>

" When you press <leader>r you can search and replace the selected text
vnoremap <silent> <leader>r :call VisualSelection('replace')<CR>

" Do :help cope if you are unsure what cope is. It's super useful!
"
" When you search with vimgrep, display your results in cope by doing:
"   <leader>cc
"
" To go to the next search result do:
"   <leader>n
"
" To go to the previous search results do:
"   <leader>p
"
map <leader>cc :botright cope<cr>
map <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
map <leader>n :cn<cr>
map <leader>p :cp<cr>





"	-> 拼写检查
""""""""""""""""""""""""""""""""""""""""""""""""""
" 按下 ,ss 切换拼写检查
map <leader>ss :setlocal spell!<cr>

" 使用<leader>的快捷方式
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=




"	-> 杂项
""""""""""""""""""""""""""""""""""""""""""""""""""
set shell=sh
" dos2unix
noremap <leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" 草稿
map <leader>q :e ~/buffer<cr>

" 切换粘贴模式
map <leader>pp :setlocal paste!<cr>

" Omni python 补全
" If you prefer the Omni-Completion tip window to close when a selection is
" " made, these lines close it on movement in insert mode or when leaving
" " insert mode
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
autocmd CompleteDone * pclose
"set completeopt-=preview

" 运行py文件
" au BufRead *.py map <buffer> <F5> :w<CR>:!/usr/bin/env python %<CR>

" taglist
" let Tlist_Show_One_file=1



"   -> 插件
""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'tpope/vim-sensible'
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'rkulla/pydiction'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'nvie/vim-flake8'
Plugin 'tmhedberg/SimpylFold'
call vundle#end()
filetype plugin on
filetype indent on

"pydiction 设置
let g:pydiction_location = '~/.vim/bundle/Pydiction/complete-dict'
let g:pydiction_menu_height = 3


" airline 设置
" let g:airline_section_b = '%{strftime("%c")}'
" let g:airline_section_y = 'BN: %{bufnr("%")}'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
set t_Co=256
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_theme="dark"
" smarter tab line
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

"nerdtree-git-plugin
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

"ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
"let g:ctrlp_custom_ignore = {
  "\ 'dir':  '\v[\/]\.(git|hg|svn)$',
  "\ 'file': '\v\.(exe|so|dll|jpg|png|jpeg|pdf)$',
  "\ 'link': 'some_bad_symbolic_links',
  "\ }
" let g:ctrlp_user_command = 'find %s -type f' 

" ultisnips 设置
"Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" simpylfold"
autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<
