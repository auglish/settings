"display-----------
set mouse=a
set number
set ruler
set list
set listchars=tab:>-,trail:-,extends:»,precedes:«,nbsp:%
set statusline=%F%m%r%h%w%=\ %{fugitive#statusline(}\ [%{&ff}:%{&fileencoding}]\ [%Y]\ [%04l,%04v]\ [%l/%L]\ %{strftime(\"%Y/%m/%d\ %H:%M:%S\")})
set cursorline
set cursorcolumn
nnoremap <Space>c :<C-u>setlocal cursorline! cursorcolumn!<CR>

"search-------------
set incsearch
set hlsearch
set ignorecase
set smartcase
set wrapscan

"filetype off
"if has('vim_starting')
"  set runtimepath+=~/.vim/neobundle
"    call neobundle#rc(expand('~/.vim/bundle'))
"    endif
"NeoBundle 'nvie/vim-flake8'.{'autoload':{'filetypes':['python']}}
"     autocmd BufWritePost *.py call Flake8()
"     filetype plugin on
"     filetype indent on
autocmd BufWrite *.py :call Flake8()

"edit----------------
set autoindent
set showmatch

"tab-----------------
set shiftwidth=2
set tabstop=2
set expandtab
set softtabstop=2

"syntax------------
syntax enable
colorscheme darkblue

"imap--------
inoremap {} {}<left>
inoremap [] []<left>
inoremap () ()<left>
inoremap '' ''<left>

inoremap <silent> <C-e> <Esc>$<Insert><right>
inoremap <silent> <C-a> <Esc>0<Insert>
inoremap <silent> <C-d> <Esc>lx<Insert>
inoremap <silent> <C-h> <left>
inoremap <silent> <C-j> <up>
inoremap <silent> <C-k> <down>
inoremap <silent> <C-l> <right>
inoremap <silent> <C-k> <Esc>ld$<Insert><right>

nnoremap - $

