syntax on "语法高亮显示
filetype on "检测文件类型
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.png,*.jpg,*.jpeg,*.gif
set nocompatible "避免以前版本的一些bug和局限
set ignorecase smartcase "忽略大小写,但在有一个或以上大写字母时仍保持对大小写敏感
set hlsearch "查询结果高亮
set incsearch "搜索变色
set nu "显示行号
set autoindent "自动对齐
set smartindent "智能对齐
set tabstop=2 "设置tab
set shiftwidth=2
set backspace=2
set	cursorline "突出显示当前行
set confirm "保存弹出确认
set ruler "打开状态标尺
set softtabstop=4 " 使得按退格键时可以一次删掉 4 个空格
set nobackup " 覆盖文件时不备份
set autochdir " 自动切换当前目录为当前文件所在的目录
set showmatch "设置匹配模式，类似当输入一个左括号时会匹配相应的那个右括号
set matchtime=5 " 对应括号高亮的时间（单位是十分之一秒
set noexpandtab " 不要用空格代替制表符
set history=50 " 历史纪录数
set cmdheight=2 " 命令行（在状态行）的高度，默认为1,这里是2
set showcmd " 在状态行显示目前所执行的命令，未完成的指令片段亦会显示出来
set encoding=utf-8 " 编码设置
set helplang=cn " 语言设置
"-----------------------管理插件Vundle---------------------------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"导航菜单
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
Plugin 'L9'
Plugin 'eikenb/acp'
Plugin 'tpope/vim-rails'
Plugin 'bufexplorer.zip'
Plugin 'Lokaltog/vim-powerline'
Plugin 'FuzzyFinder'
call vundle#end()
"nerdtree配置
"map <C-n> :NERDTreeToggle<CR>
map <C-m> :NERDTreeFind<CR>
"打开文件时关闭树
let NERDTreeQuitOnOpen=1
let mapleader = 'z'
"自动打开nerdtree
"autocmd vimenter * NERDTree
"ctrlp查找时过滤文件
let g:ctrlp_custom_ignore = {
	       \ 'dir': '\v[\/](log|tmp|doc|vendor|\.git)$',
				 \ 'file': '\v\.(log|png|jpg|css|js|gif)$',
		     \ }
let g:acp_enableAtStartup = 1
"有道插件
"vnoremap <silent> <C-T> :<C-u>Ydv<CR>
"nnoremap <silent> <C-T> :<C-u>Ydc<CR>
noremap <leader>yd :<C-u>Yde<CR>
" Javascript syntax hightlight
 syntax enable
" Set syntax highlighting for specific file types
 autocmd BufRead,BufNewFile Appraisals set filetype=ruby
 autocmd BufRead,BufNewFile *.md set filetype=markdown
 autocmd Syntax javascript set syntax=jquery
" Color scheme
 colorscheme molokai
 highlight NonText guibg=#060606
 highlight Folded  guibg=#0A0A0A guifg=#9090D0
 set laststatus=2
 set statusline+=%{fugitive#statusline()}
