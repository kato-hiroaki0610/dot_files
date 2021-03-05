"#####dein設定#####

if &compatible
set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
"
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
endif

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable


" ###### Dein Plugin #####
" Python
call dein#add('davidhalter/jedi-vim')
" StateuBar
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
" Split size
call dein#add('simeji/winresizer')
" Auto close tag
call dein#add('rchaser53/insertclosetag')
" NERDTree
call dein#add('scrooloose/nerdtree')
" rainbow
call dein#add('luochen1990/rainbow')
" YAJS Javascript syntax
call dein#add('othree/yajs.vim')

" ##### NERDTree #####
map <C-n> :NERDTreeToggle<CR>

" ##### Rainbow #####
let g:rainbow_active = 1

" ##### Airline #####
set laststatus=2
set showtabline=2 " 常にタブラインを表示
set t_Co=256 " この設定がないと色が正しく表示されない
let g:airline_theme = 'wombat'
set laststatus=2
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#wordcount#enabled = 0
let g:airline#extensions#default#layout = [['a', 'b', 'c'], ['x', 'y', 'z']]
let g:airline_section_c = '%t'
let g:airline_section_x = '%{&filetype}'
let g:airline_section_z = '%3l:%2v %{airline#extensions#ale#get_warning()} %{airline#extensions#ale#get_error()}'
let g:airline#extensions#ale#error_symbol = ' '
let g:airline#extensions#ale#warning_symbol = ' '
let g:airline#extensions#default#section_truncate_width = {}
let g:airline#extensions#whitespace#enabled = 1


"#####基本設定#####
colorscheme darkblue
" syntax on  "シンタックスハイライトを有効にする
" 改行時にコメントアウトを引き継がないように設定.
autocmd FileType * setlocal formatoptions-=ro
" 行番号を表示.
set number
" カーソル行をハイライト.
set cursorline
" タイトルを表示.
set title
" 対応括弧表示
set showmatch
" 不可視文字の可視化.
set list
" 不可視文字の設定.
" tab: タブ.
" trail: 行末に続く空白.
" eol: 改行文字.
" extends: ウィンドウ幅が狭く、右に省略された文字がある場合に表示.
" preceds: ウィンドウ幅が狭く、左に省略された文字がある場合に表示.
" nbsp: 不可視文字を表す.
set listchars=tab:>_,trail:_,eol:↲,extends:>,precedes:<,nbsp:%
" ファイルを開いた際に表示するタブ幅.
set tabstop=4
" タブを挿入した際のタブ幅.
set softtabstop=4
" タブを挿入するときの幅 .
set shiftwidth=4
" 改行時に前の行のインデントを継続する.
set autoindent
" スマートインデントを有効.
set smartindent
" タブを空白に置き換える.
set expandtab
" 1文字入力毎に検索を行う.
set incsearch
" 検索パターンで大文字小文字を区別しない.
set ignorecase
" 検索パターンに大文字が含まれていたら、大文字小文字を区別する.  set smartcase
" " 検索結果をハイライト.
set hlsearch
" コマンドモードの補完
set wildmenu
" コマンド履歴
set history=500
" 256色
set t_Co=256
" swapファイルを作成しない
set noswapfile
" 検索結果のハイライトのトグル.
nnoremap <silent> <Esc><Esc> :<C-u>set nohlsearch<CR>
" 保存と終了の設定
nnoremap <silent> <Space>w :w<CR>
nnoremap <silent> <Space>wq :wq<CR>
nnoremap <silent> <Space>q :q!<CR>
