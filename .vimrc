"==========================================
" 安装说明
" 1、git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" 2、打开vim 输入命令:BundleInstall 
" 3、安装ctags sudo yum install ctags
" 4、git config --global core.editor "vim" 设置git使用vim
"
" 注意事项
" 1、安装前请自行备份好home目录下的.vimrc 和 .vim
" 2、让linux支持256色显示  在~/.bashrc文件里添加一下代码 然后让文件生效：source ~/.bashrc
"" 
"    if [ -e /usr/share/terminfo/x/xterm-256color ]; then                                                      
"         export TERM='xterm-256color'
"         else
"              export TERM-'xterm-color'
"    fi
""
" 快捷键说明
" <F3> : 启动目录树
" <F4> : 启动函数列表
" <F6> : 生成tags
" <F9> : 粘贴模式切换 
" <ctrl> + p : 启动ctrlp 查看缓存文件
"==========================================

"==========================================
" Vundle
"==========================================
" vundle插件三种格式：
" 1、original repos on github （Github网站上非vim-scripts仓库的插件，按下面格式填写）
" Bundle 'tpope/vim-fugitive'

" 2、vim-scripts repos （vim-scripts仓库里的，按下面格式填写）
" Bundle 'L9'

" 3、non github repos （非上面两种情况的，按下面格式填写）
" Bundle 'git://git.wincent.com/command-t.git'

" vundle命令

" :BundleList - list configured bundles

" :BundleInstall(!) - install(update) bundles

" :BundleSearch(!) foo - search(or refresh cache first) for foo

" :BundleClean(!) - confirm(or auto-approve) removal of unused bundles

filetype off 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle "Lokaltog/vim-powerline"
Bundle 'taglist.vim'
Bundle 'php.vim'
Bundle 'The-NERD-tree'
Bundle 'omnicppcomplete'
Bundle 'desert-warm-256'
Bundle "tomasr/molokai"
Bundle 'vim-scripts/ctags.vim'
Bundle "jelera/vim-javascript-syntax"
Bundle 'kien/ctrlp.vim'
Bundle 'https://github.com/vim-scripts/AutoComplPop.git'
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdcommenter'
Bundle 'vim-scripts/Emmet.vim'
Bundle 'othree/html5.vim'
Bundle 'jiangmiao/simple-javascript-indenter'
Bundle 'joonty/vdebug'

filetype plugin indent on " required! /** vimrc文件配置结束 **/


"==========================================
"General
"==========================================

" history存储长度。
set history=1000       

"检测文件类型
filetype on
" 针对不同的文件类型采用不同的缩进格式  
filetype indent on               
"允许插件  
filetype plugin on

" 非兼容vi模式。去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限
set nocompatible      
set autoread            " 文件修改之后自动载入。
set shortmess=atI       " 启动的时候不显示那个援助索马里儿童的提示

" 取消备份。
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile
set noreadonly

" No annoying sound on errors
" 去掉输入错误的提示声音
set noerrorbells
set novisualbell
set vb t_vb=

"" about file encoding
set fileencodings=utf-8,gbk,latin-1
set encoding=utf-8 termencoding=utf-8 fileencoding=utf-8

" 设置leader
let mapleader=','

"==========================================
" show and format
"==========================================
"显示行号：
set number 
" 取消换行
set nowrap                   
""为方便复制，用<F2>开启/关闭行号显示:
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
"括号配对情况
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2
"设置文内智能搜索提示
" 高亮search命中的文本。
set hlsearch          
" 搜索时忽略大小写
set ignorecase
" 随着键入即时搜索
set incsearch
" 有一个或以上大写字母时仍大小写敏感
set smartcase

"打开自动缩进 
set smartindent 


" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

"==========================================
" tab空格设置
"==========================================
set listchars=tab:>-,eol:$
set expandtab                " 将Tab自动转化成空格    [需要输入真正的Tab键时，使用 Ctrl+V + Tab]
"如果文件类型为.cpp .h文件 
if expand("%:e") == 'cpp' || expand("%:e") == 'h' || expand("%:e") == 'proto' || expand("%:e") == 'xml' 
    set tabstop=8                " 设置Tab键的宽度        [等同的空格个数]
    set shiftwidth=8
    " 按退格键时可以一次删掉 4 个空格
    set softtabstop=8
else
    set tabstop=4                " 设置Tab键的宽度        [等同的空格个数]
    set shiftwidth=4
    " 按退格键时可以一次删掉 4 个空格
    set softtabstop=4
    
endif

"==========================================
" status
"==========================================
"显示当前的行号列号：
set ruler
""在状态栏显示正在输入的命令
set showcmd

" 命令行（在状态行下）的高度，默认为1，这里是2
set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P
" Always show the status line
set laststatus=2
let g:Powerline_symbols='unicode'

"==========================================
"colors and fonts
"==========================================
"开启语法高亮
syntax enable
syntax on

"配色方案
" 设置背景主题  
set background=dark
color molokai
let g:molokai_original = 1
let g:rehash256 = 1
"colorscheme solarized
"let g:solarized_termcolors=256

"==========================================
"ctags + taglist
"==========================================
"默认打开Taglist 
let Tlist_Auto_Open=0
let Tlist_Show_One_File = 1 "不同时显示多个文件的tag，只显示当前文件的 
let Tlist_File_Fold_Auto_Close = 1
let Tlist_Exit_OnlyWindow = 1 "如果taglist窗口是最后一个窗口，则退出vim 
let Tlist_Use_Right_Window = 1 "在右侧窗口中显示taglist窗口
let Tlist_JS_Settings = 'javascript;s:string;a:array;o:object;f:function'

set tags=tags
set tags+=./tags
nmap <C-]> g]
"set tags+=/Users/sun/.vim/CppLib/tags/cpp

"==========================================
"omnicppcomplete
"==========================================
" 自动完成 
set completeopt=longest,menu

let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1 
let OmniCpp_ShowPrototypeInAbbr = 1 " 显示函数参数列表 
let OmniCpp_MayCompleteDot = 1   " 输入 .  后自动补全
let OmniCpp_MayCompleteArrow = 1 " 输入 -> 后自动补全 
let OmniCpp_MayCompleteScope = 1 " 输入 :: 后自动补全 
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]

set selection=inclusive
set wildmenu
set mousemodel=popup
au FileType php setlocal dict+=~/.vim/dict/php_funclist.dict
au FileType css setlocal dict+=~/.vim/dict/css.dict
au FileType c setlocal dict+=~/.vim/dict/c.dict
au FileType cpp setlocal dict+=~/.vim/dict/cpp.dict
au FileType scale setlocal dict+=~/.vim/dict/scale.dict
au FileType javascript setlocal dict+=~/.vim/dict/javascript.dict
au FileType html setlocal dict+=~/.vim/dict/javascript.dict
au FileType html setlocal dict+=~/.vim/dict/css.dict

"==========================================
"others
"==========================================

" Python 文件的一般设置，比如不要 tab 等
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab

"自动补全配置
autocmd FileType python set omnifunc=pythoncomplete#Complete

"=========================================
" vim-javascript
" =======================================

let g:javascript_plugin_jsdoc = 1

"==========================================
" NERD tree
"==========================================
let NERDChristmasTree=0
let NERDTreeWinSize=35
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="left"
" Automatically open a NERDTree if no files where specified
autocmd vimenter * if !argc() | NERDTree | endif
" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"==========================================
" 新建文件格式
"==========================================
"新建.c,.h,.sh,.java文件，自动插入文件头 
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.rb,*.java,*.py exec ":call SetTitle()" 
""定义函数SetTitle，自动插入文件头 
func SetTitle() 
    "如果文件类型为.sh文件 
    if &filetype == 'sh' 
            call setline(1,"\#!/bin/bash") 
            call append(line("."), "") 
    elseif &filetype == 'python'
            call setline(1,"#!/usr/bin/env python")
            call append(line("."),"# coding=utf-8")
            call append(line(".")+1, "") 
    elseif &filetype == 'ruby'
            call setline(1,"#!/usr/bin/env ruby")
            call append(line("."),"# encoding: utf-8")
            call append(line(".")+1, "")
            "    elseif &filetype == 'mkd'
            "        call setline(1,"<head><meta charset=\"UTF-8\"></head>")
    else 
            call setline(1, "/*************************************************************************") 
            call append(line("."), "    > File Name: ".expand("%")) 
            call append(line(".")+1, "    > Author: ") 
            call append(line(".")+2, "    > Mail: ") 
            call append(line(".")+3, "    > Created Time: ".strftime("%c")) 
            call append(line(".")+4, " ************************************************************************/") 
            call append(line(".")+5, "")
    endif
    if expand("%:e") == 'cpp'
            call append(line(".")+6, "#include<iostream>")
            call append(line(".")+7, "using namespace std;")
            call append(line(".")+8, "")
    endif
    if &filetype == 'c'
            call append(line(".")+6, "#include<stdio.h>")
            call append(line(".")+7, "")
    endif
    if expand("%:e") == 'h'
            call append(line(".")+6, "#ifndef _".toupper(expand("%:r"))."_H")
            call append(line(".")+7, "#define _".toupper(expand("%:r"))."_H")
            call append(line(".")+8, "#endif")
    endif
    if &filetype == 'java'
            call append(line(".")+6,"public class ".expand("%:r"))
            call append(line(".")+7,"")
    endif
    "新建文件后，自动定位到文件末尾
    autocmd BufNewFile * normal G
endfunc 

"==========================================
" nerdcommenter配置
" <leader>cc 注释当前行
" <leader>cm 只用一组符号来注释
" <leader>cy 注释并复制
" <leader>cs 优美的注释
" <leader>cu 取消注释
"==========================================
" 注释的时候自动加个空格, 强迫症必配
let g:NERDSpaceDelims=1

"==========================================
" 快捷键
"==========================================

" Open a NERDTree
nmap <F3> :NERDTreeToggle<cr>

" generate tags 
map <F6> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>

" open tlist
nmap <F4> :Tlist<cr>

" open paste mode
set pastetoggle=<F9>

"=====================================
"html.vim
"====================================
let g:html_indent_script1 = "inc"   
let g:html_indent_style1 = "inc"  
let g:html_indent_inctags = "html,body,head,tbody"

"===================================
"xdebug
"==================================
let g:vdebug_options = {}
let g:vdebug_options["port"] = 9010
