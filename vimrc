" hotea's vimrc
" myblog: http://my.oschina.net/sukai
"
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
"	-> 帮助功能



"	-> 常规
""""""""""""""""""""""""""""""""""""""""""""""""""
" 历史记录
set history=500			

" 激活文件类型插件
filetype plugin on
filetype indent on

" 当文件改变时自动读取
set autoread

" 
let mapleader=","
let g:mapleader=","

" 快速保存
nmap <leader>w :w!<cr>


"	-> 界面
""""""""""""""""""""""""""""""""""""""""""""""""""
" set 7 lines to the cursor - when moving vertically using j/k
set so=7

" 打开通配菜单
set wildmenu

" 忽略的文件
set wildignore=*.o,*~,*.pyc

" 总是显示当前位置
set ruler

" 增高命令栏
set cmdheight=2

" a buffer becomes hidden when it is abandoned
set hid

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

colorscheme desert
set background=dark

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

" 状态栏格式




"	-> 映射
""""""""""""""""""""""""""""""""""""""""""""""""""
" 将0映射为^
map 0 ^

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
" dos2unix
noremap <leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" 草稿
map <leader>q :e ~/buffer<cr>

" 切换粘贴模式
map <leader>pp :setlocal paste!<cr>





"	-> 帮助功能
""""""""""""""""""""""""""""""""""""""""""""""""""
